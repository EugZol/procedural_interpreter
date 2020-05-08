module ProceduralInterpreter
  class VM
    BUILT_IN = {
      "input" => ->(functions: nil) { STDIN.gets },
      "output" => ->(x, functions: nil) { puts(x) },
      "to_integer" => ->(x, functions: nil) { x.to_i }
    }

    class Boolean
      def self.===(other)
        other == true || other == false
      end
    end

    class ReturnValueThrower < StandardError
      attr_reader :value

      def initialize(value)
        @value = value
      end
    end

    # should_return установлен в false:
    def self.from_ast(ast)
      case ast
      in [:program, function_definitions, body]
        functions = function_definitions.map do |(_, name, formal_arguments, body)|
          f =
            ->(*actual_arguments, functions:) {
              if actual_arguments.size != formal_arguments.size
                raise "Expected #{formal_arguments.size} arguments, got #{actual_arguments.size} " \
                  "for function #{name}"
              end

              variables = formal_arguments.zip(actual_arguments).to_h

              begin
                new(body, variables: variables, functions: functions).run
              rescue ReturnValueThrower => r
                r.value
              end
            }
          [name, f]
        end.to_h

        new(body, functions: functions)
      in _
        raise "Uknown ast type: #{ast.inspect}"
      end
    end

    def initialize(body, variables: {}, functions: {})
      @functions = functions
      @variables = variables
      @program = body
    end

    def run
      result = nil

      @program.each do |statement|
        case statement
        in [:literal, value]
          result = value
        in [:variable, name]
          result = @variables[name]
        in [:assignment, variable_name, expression]
          right_side = clone_and_eval_expression(expression)
          result = right_side
          @variables[variable_name] = right_side
        in [:binary_operator, op, left, right]
          result = process_operator(op, clone_and_eval_expression(left), clone_and_eval_expression(right))
        in [:unary_operator, op, left]
          result = process_operator(op, clone_and_eval_expression(left))
        in [:function_call, name, args]
          args = args.map { |arg| clone_and_eval_expression(arg) }
          result = process_function_call(name, args)
        in [:if_else, condition, if_block, else_block]
          condition = clone_and_eval_expression(condition)
          result = condition ? clone_and_eval_statements(if_block) : clone_and_eval_statements(else_block)
        in [:case_when, object, when_blocks, else_block]
          object = clone_and_eval_expression(object)

          found_result = false
          when_blocks.each do |(compare_expression, statements)|
            compare_expression = clone_and_eval_expression(compare_expression)

            if object == compare_expression
              result = clone_and_eval_statements(statements)
              found_result = true
              break
            end
          end

          if !else_block.empty? && !found_result
            result = clone_and_eval_statements(else_block)
          end
        in [:while, raw_condition, block]
          condition = clone_and_eval_expression(raw_condition)

          while condition
            result = clone_and_eval_statements(block)
            condition = clone_and_eval_expression(raw_condition)
          end
        in [:return, expression]
          result = clone_and_eval_expression(expression)
          raise ReturnValueThrower.new(result)
        else
          raise "Unknown statement: #{statement.inspect}"
        end
      end

      result
    end

    private

    def process_operator(op, left, right = nil)
      case [op, left, right]
      in ['+', Numeric, Numeric] | ['+', String, String]
        left + right
      in ['-', Numeric, Numeric]
        left - right
      in ['*', Numeric, Numeric]
        left * right
      in ['/', Numeric, Numeric]
        left / right
      in ['^', Numeric, Numeric]
        left ** right
      in ['<', Numeric, Numeric]
        left < right
      in ['<=', Numeric, Numeric]
        left <= right
      in ['>', Numeric, Numeric]
        left > right
      in ['>=', Numeric, Numeric]
        left >= right
      in ['==', Numeric, Numeric] | ['==', String, String]
        left == right
      in ['<>', Numeric, Numeric] | ['<>', String, String]
        left != right
      in ['&', Boolean, Boolean]
        left && right
      in ['|', Boolean, Boolean]
        left || right
      in ['+', Numeric, nil]
        left
      in ['-', Numeric, nil]
        -left
      in ['!', Boolean, nil]
        !left
      else
        raise "Unknown operator: #{operator.inspect}"
      end
    end

    def process_function_call(name, args)
      function = @functions[name]
      function ||= BUILT_IN[name]

      if function.nil?
        raise "Unknown function #{name}"
      end

      function.(*args, functions: @functions)
    end

    def clone_and_eval_expression(expression)
      clone_and_eval_statements([expression])
    end

    def clone_and_eval_statements(ast)
      self.class.new(ast, variables: @variables, functions: @functions).run
    end
  end
end
