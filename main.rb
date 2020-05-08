#!/usr/bin/env ruby

require_relative 'lib/lexer'
require_relative 'lib/parser'
require_relative 'lib/vm'

if ARGV.empty?
  abort "Укажите имя файла аргументов"
end

input = File.read(ARGV.first)
tokens = ProceduralInterpreter::Lexer.lex(input)
ast = ProceduralInterpreter::Parser.new(tokens).parse
puts ProceduralInterpreter::VM.from_ast(ast).run
