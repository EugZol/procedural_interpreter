require 'lexer'
require 'parser'
require 'vm'

describe ProceduralInterpreter::VM do
  let(:run) do
    ->(input) {
      tokens = ProceduralInterpreter::Lexer.lex(input + "\n")
      ast = ProceduralInterpreter::Parser.new(tokens).parse
      ProceduralInterpreter::VM.from_ast(ast).run
    }
  end

  it 'does simple arithmetics' do
    expect(run.("1 + 2 * -3 ^ 4")).to eq -161
    expect(run.("(1 + 2) * -3 ^ 4")).to eq -243
  end

  it 'has to_integer() buit in function' do
    expect(run.('5 + to_integer("3")')).to eq 8
  end

  it 'does simple logic' do
    expect(run.("true & true")).to eq true
    expect(run.("true & false")).to eq false
    expect(run.("true | false")).to eq true
    expect(run.("true & true & !false")).to eq true
  end

  it 'does simple assignments' do
    code = <<~END
      x = 5 + 3
      y = 7
      x * y
    END

    expect(run.(code)).to eq 56
  end

  it 'does simple functions' do
    code = <<~END
      fn this_is_5()
        5
      end

      this_is_5() + 3
    END

    expect(run.(code)).to eq 8
  end

  it 'does conditions' do
    code = <<~END
      x = 5

      if x >= 3
        "yes"
      else
        "no"
      end
    END

    expect(run.(code)).to eq "yes"

    code = <<~END
      x = 5

      if x < 3
        "yes"
      else
        "no"
      end
    END

    expect(run.(code)).to eq "no"
  end

  it 'does case-whens' do
    code = <<~END
      case 2 * 2
      when 1
        "one"
      when 4
        "four"
      else
        "unknown"
      end
    END

    expect(run.(code)).to eq "four"

    code = <<~END
      case 3 * 2 - 1
      when 1
        "one"
      when 4
        "four"
      else
        "unknown"
      end
    END

    expect(run.(code)).to eq "unknown"
  end

  it 'does while loops' do
    code = <<~END
      fn rem(x, y)
        while x > y
          x = x - y
        end

        x
      end

      rem(150, 7)
    END

    expect(run.(code)).to eq 3
  end

  it 'does return' do
    code = <<~END
      fn factorial(x)
        if x == 1
          return x
        end

        factorial(x - 1) * x
      end

      factorial(8)
    END

    expect(run.(code)).to eq 40320
  end
end
