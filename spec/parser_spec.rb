require 'lexer'

describe "ProceduralInterpreter::Parser" do
  before(:all) do
    puts `rake -f #{__dir__ + "/../Rakefile"}`
    require 'parser'
  end

  let(:parse) do
    ->(input) {
      ProceduralInterpreter::Parser.new(ProceduralInterpreter::Lexer.lex(input + "\n")).parse
    }
  end

  describe 'empty program' do
    it 'is valid' do
      expect(ProceduralInterpreter::Parser.new([]).parse).to eq [:program, [], []]
    end
  end

  describe 'program with a single digit' do
    it 'is valid' do
      expect(parse.("2")).to eq [:program, [], [[:literal, 2]]]
    end
  end

  describe 'program with a single letter' do
    it 'is valid' do
      expect(parse.("x")).to eq [:program, [], [[:variable, 'x']]]
    end
  end

  describe 'binary operators' do
    %w(+ - * / ^ < <= > >= == <> & |).each do |operator|
      it "parses #{operator}" do
        expect(parse.("2 #{operator} 5")).to eq [:program, [], [
          [:binary_operator, operator, [:literal, 2], [:literal, 5]]
        ]]
      end
    end
  end

  describe 'unary operators' do
    %w(- + !).each do |operator|
      it "parses #{operator}" do
        expect(parse.("#{operator} x")).to eq [:program, [], [
          [:unary_operator, operator, [:variable, 'x']]
        ]]
      end
    end
  end

  it 'parses true/false constants' do
    expect(parse.("true == false")).to eq [:program, [], [
      [:binary_operator, '==', [:literal, true], [:literal, false]]
    ]]
  end

  it 'manages precedense' do
    code = "1 + 2 * -3 ^ 4 <= x"

    expect(parse.(code)).to eq [:program, [], [
      [:binary_operator, '<=',
        [:binary_operator, '+',
          [:literal, 1],
          [:binary_operator, '*',
            [:literal, 2],
            [:unary_operator, '-',
              [:binary_operator, '^',
                [:literal, 3],
                [:literal, 4]
              ]
            ]
          ]
        ],
        [:variable, 'x']
      ]
    ]]
  end

  it 'parses simple function calls' do
    expect(parse.("f()")).to eq [:program, [], [
      [:function_call, 'f', []]
    ]]
  end

  it 'parses complex function calls' do
    expect(parse.("5 + f(x)")).to eq [:program, [], [
      [:binary_operator, '+',
        [:literal, 5],
        [:function_call, 'f', [[:variable, 'x']]]
      ]
    ]]

    expect(parse.("5 + f(x, y, 2+2)")).to eq [:program, [], [
      [:binary_operator, '+',
        [:literal, 5],
        [:function_call, 'f', [
          [:variable, 'x'],
          [:variable, 'y'],
          [:binary_operator, '+', [:literal, 2], [:literal, 2]],
        ]]
      ]
    ]]
  end

  it 'parses if-end expressions' do
    code = <<~END
      if x > y
        1
      end
    END

    expect(parse.(code)).to eq [:program, [], [
      [:if_else, [:binary_operator, '>', [:variable, 'x'], [:variable, 'y']],
        [[:literal, 1]],
        []
      ]
    ]]
  end

  it 'parses if-else-end expressions' do
    code = <<~END
      if x > y
        1
      else
        2
      end
    END

    expect(parse.(code)).to eq [:program, [], [
      [:if_else, [:binary_operator, '>', [:variable, 'x'], [:variable, 'y']],
        [[:literal, 1]],
        [[:literal, 2]]
      ]
    ]]
  end

  it 'parses case-when-end expressions' do
    code = <<~END
      case x
      when 1 + 2
        3
        4
      end
    END

    expect(parse.(code)).to eq [:program, [], [
      [:case_when,
        [:variable, 'x'],
        [
          [
            [:binary_operator, '+', [:literal, 1], [:literal, 2]],
            [[:literal, 3], [:literal, 4]]
          ]
        ],
        []
      ]
    ]]
  end

  it 'parses case-when-when-end expressions' do
    code = <<~END
      case x
      when 1 + 2
        3
      when 4
        5
      end
    END

    expect(parse.(code)).to eq [:program, [], [
      [:case_when,
        [:variable, 'x'],
        [
          [
            [:binary_operator, '+', [:literal, 1], [:literal, 2]],
            [[:literal, 3]]
          ],
          [
            [:literal, 4],
            [[:literal, 5]]
          ]
        ],
        []
      ]
    ]]
  end

  it 'parses case-when-else-end expressions' do
    code = <<~END
      case x
      when 1
        2
      when 3
        4
      else
        5
      end
    END

    expect(parse.(code)).to eq [:program, [], [
      [:case_when,
        [:variable, 'x'],
        [
          [
            [:literal, 1],
            [[:literal, 2]]
          ],
          [
            [:literal, 3],
            [[:literal, 4]]
          ]
        ],
        [[:literal, 5]]
      ]
    ]]
  end

  it 'parses while-end expressions' do
    code = <<~END
      while x
        1
        2
      end
    END

    expect(parse.(code)).to eq [:program, [], [
      [:while,
        [:variable, 'x'],
        [
          [:literal, 1],
          [:literal, 2]
        ],
      ]
    ]]
  end

  it 'parses assignment' do
    expect(parse.("x = 1 + 2")).to eq [:program, [], [
      [:assignment, 'x',
        [:binary_operator, '+', [:literal, 1], [:literal, 2]]
      ]
    ]]
  end

  it 'parses return' do
    expect(parse.("return 5")).to eq [:program, [], [
      [:return, [:literal, 5]]
    ]]
  end

  it 'parses single function definition' do
    code = <<~END
      fn this_is_five()
        5
      end
    END

    expect(parse.(code)).to eq [:program, [
      [:function_definition, 'this_is_five', [], [
        [:literal, 5]
      ]]
    ], []]
  end

  it 'parses multiple function definitions' do
    code = <<~END
      fn adult?(x)
        x >= 18
      end

      fn sum(x, y)
        output(x + y)
      end
    END

    expect(parse.(code)).to eq [:program, [
      [:function_definition, 'adult?', ['x'], [
        [:binary_operator, '>=', [:variable, 'x'], [:literal, 18]]
      ]],
      [:function_definition, 'sum', ['x', 'y'], [
        [:function_call, 'output', [
          [:binary_operator, '+', [:variable, 'x'], [:variable, 'y']]
        ]]
      ]]
    ], []]
  end

  it 'parses full programs' do
    code = <<~END
      fn adult?(x)
        x >= 18
      end

      output("Сколько вам лет?")
      age = to_integer(input())

      if adult?(age)
        output("Вы совершеннолетний")
      else
        output("Вы не совершеннолетний")
      end
    END

    expect(parse.(code)).to eq [:program, [
      [:function_definition, 'adult?', ['x'], [
        [:binary_operator, '>=', [:variable, 'x'], [:literal, 18]]
      ]],
    ], [
      [:function_call, 'output', [[:literal, "Сколько вам лет?"]]],
      [:assignment, 'age',
        [:function_call, 'to_integer', [[:function_call, 'input', []]]]
      ],
      [:if_else, [:function_call, 'adult?', [[:variable, 'age']]],
        [[:function_call, 'output', [[:literal, "Вы совершеннолетний"]]]],
        [[:function_call, 'output', [[:literal, "Вы не совершеннолетний"]]]]
      ]
    ]]
  end
end
