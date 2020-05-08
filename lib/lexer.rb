module ProceduralInterpreter
  module Lexer
    def self.lex(string)
      string = string.gsub(/\n+/, "\n")

      symbols =
        string.
          #         число           операторы   \n     переменная        строка     сравнения    <>
          scan(/(?:\d+(?:\.\d+)?)|[-()*+\/^&|!,]|\n|(?:[a-z][a-z_0-9]*\??)|(?:"[^"]*")|(?:[<>=](?!>)=?)|(?:<>)/).
          map { |x| x =~ /\A\d+(\.\d+)?\Z/ ? x.to_f : x }

      symbols.map do |s|
        case s
        when Numeric
          [:LITERAL, s]
        when /"/
          [:LITERAL, s[1..-2]]
        when 'true', 'false'
          [:LITERAL, s == 'true']
        when '(', ')', '*', '/', '^', '&', '|', '!', '=', ',', '+', '-', '<', '>', '<=', '>=', '==', '<>', ','
          [s, s]
        when "\n"
          [:NEWLINE, "\n"]
        when 'end'
          [:END, 'end']
        when 'fn'
          [:FN, 'fn']
        when 'if'
          [:IF, 'if']
        when 'else'
          [:ELSE, 'else']
        when 'return'
          [:RETURN, 'return']
        when 'case'
          [:CASE, 'case']
        when 'when'
          [:WHEN, 'when']
        when 'while'
          [:WHILE, 'while']
        when /\A[a-z][a-z_0-9]*\??\z/
          [:VARIABLE, s]
        else
          raise "Unknown token #{s.inspect}"
        end
      end
    end
  end
end
