#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.0
# from Racc grammar file "".
#

require 'racc/parser.rb'
module ProceduralInterpreter
  class Parser < Racc::Parser

module_eval(<<'...end parser.y/module_eval...', 'parser.y', 136)

def initialize(tokens)
  @tokens = tokens.dup
  super()
end

def parse
  do_parse
end

private

def next_token
  @tokens.shift
end
...end parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    33,     5,    34,    35,    36,    37,    38,    39,    40,    41,
    42,    43,    44,    45,    24,    23,    33,     6,    34,    35,
    36,    37,     5,    29,    17,    14,    75,    26,    93,    27,
    87,    16,    30,    15,    32,    18,    24,    23,    33,    25,
    34,    35,    36,    37,    55,    47,    17,    14,    46,    26,
    56,    27,    47,    16,    33,    15,    80,    18,    24,    23,
    33,    25,    34,    35,    33,    24,    23,    33,    17,    49,
    33,    26,    81,    27,    82,    17,    49,    87,    26,    18,
    27,    24,    23,    25,    88,    89,    18,    97,    24,    23,
    25,    17,    49,    98,    26,    99,    27,   100,    17,    49,
   101,    26,    18,    27,    24,    23,    25,   107,   nil,    18,
   nil,    24,    23,    25,    17,    49,   nil,    26,   nil,    27,
   nil,    17,    49,   nil,    26,    18,    27,    24,    23,    25,
   nil,   nil,    18,   nil,    24,    23,    25,    17,    49,   nil,
    26,   nil,    27,   nil,    17,    49,   nil,    26,    18,    27,
    24,    23,    25,   nil,   nil,    18,   nil,    24,    23,    25,
    17,    49,   nil,    26,   nil,    27,   nil,    17,    49,   nil,
    26,    18,    27,    24,    23,    25,   nil,   nil,    18,   nil,
    24,    23,    25,    17,    49,   nil,    26,   nil,    27,   nil,
    17,    49,   nil,    26,    18,    27,    24,    23,    25,   nil,
   nil,    18,   nil,    24,    23,    25,    17,    49,   nil,    26,
   nil,    27,   nil,    17,    49,   nil,    26,    18,    27,    24,
    23,    25,   nil,   nil,    18,   nil,    24,    23,    25,    17,
    49,   nil,    26,   nil,    27,   nil,    17,    49,   nil,    26,
    18,    27,    24,    23,    25,   nil,   nil,    18,   nil,    24,
    23,    25,    17,    49,   nil,    26,   nil,    27,   nil,    17,
    49,   nil,    26,    18,    27,    24,    23,    25,   nil,   nil,
    18,   nil,    24,    23,    25,    17,    49,   nil,    26,   nil,
    27,   nil,    17,    49,   nil,    26,    18,    27,    24,    23,
    25,   nil,   nil,    18,   nil,    24,    23,    25,    17,    49,
   nil,    26,   nil,    27,   nil,    17,    14,   nil,    26,    18,
    27,   nil,    16,    25,    15,   nil,    18,    24,    23,    33,
    25,    34,    35,    36,    37,   nil,   nil,    17,    14,   nil,
    26,   nil,    27,   nil,    16,   nil,    15,   nil,    18,    24,
    23,    33,    25,    34,    35,    36,    37,   nil,   nil,    17,
    49,   nil,    26,   nil,    27,    24,    23,   nil,   nil,    33,
    18,    34,    35,   nil,    25,    17,    14,   nil,    26,   nil,
    27,   nil,    16,    91,    15,   nil,    18,    24,    23,   nil,
    25,   nil,   nil,   nil,   nil,   nil,   nil,    17,    14,   nil,
    26,    93,    27,   nil,    16,   nil,    15,   nil,    18,    24,
    23,   nil,    25,   nil,   nil,   nil,    24,    23,   nil,    17,
    49,   nil,    26,   nil,    27,   nil,    17,    14,   nil,    26,
    18,    27,   nil,    16,    25,    15,   nil,    18,    24,    23,
   nil,    25,   nil,   nil,   nil,   nil,   nil,   nil,    17,    14,
   nil,    26,   nil,    27,   nil,    16,   nil,    15,   nil,    18,
    24,    23,   nil,    25,   nil,   nil,   nil,   nil,   nil,   nil,
    17,    14,   nil,    26,   nil,    27,   nil,    16,   nil,    15,
   nil,    18,    24,    23,   nil,    25,   nil,   nil,   nil,   nil,
   nil,   nil,    17,    14,   nil,    26,   nil,    27,   nil,    16,
   106,    15,   nil,    18,    24,    23,   nil,    25,   nil,   nil,
   nil,   nil,   nil,   nil,    17,    14,   nil,    26,   nil,    27,
   nil,    16,   nil,    15,   nil,    18,    24,    23,   nil,    25,
   nil,   nil,   nil,   nil,   nil,   nil,    17,    14,   nil,    26,
   nil,    27,   nil,    16,   nil,    15,   nil,    18,   nil,   nil,
    33,    25,    34,    35,    36,    37,    38,    39,    40,    41,
    42,    43,    44,    45,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    33,    74,    34,    35,    36,    37,    38,
    39,    40,    41,    42,    43,    44,    45,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    33,    76,    34,    35,
    36,    37,    38,    39,    40,    41,    42,    43,    44,    45,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    33,
    77,    34,    35,    36,    37,    38,    39,    40,    41,    42,
    43,    44,    45,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    33,   102,    34,    35,    36,    37,    38,    39,
    40,    41,    42,    43,    44,    45,    33,   nil,    34,    35,
    36,    37,    38,    39,    40,    41,    42,    43,    44,    45,
    33,   nil,    34,    35,    36,    37,    38,    39,    40,    41,
    42,    43,    44,    45,    33,   nil,    34,    35,    36,    37,
    38,    39,    40,    41,    42,    43,    44,    45,    33,   nil,
    34,    35,    36,    37,    38,    39,    40,    41,    42,    43,
    44,    45,    33,   nil,    34,    35,    36,    37,    38,    39,
    40,    41,    42,    43,    44,    33,   nil,    34,    35,    36,
    37,    38,    39,    40,    41,    42,    43,    33,   nil,    34,
    35,    36,    37,    38,    39,    40,    41,    42,    43,    33,
   nil,    34,    35,    36,    37,    38,    39,    40,    41,    42,
    43 ]

racc_action_check = [
    51,     0,    51,    51,    51,    51,    51,    51,    51,    51,
    51,    51,    51,    51,     2,     2,    62,     1,    62,    62,
    62,    62,     3,     5,     2,     2,    51,     2,    85,     2,
    85,     2,     6,     2,     9,     2,     8,     8,    63,     2,
    63,    63,    63,    63,    29,    14,     8,     8,    14,     8,
    31,     8,    49,     8,    52,     8,    55,     8,    15,    15,
    60,     8,    60,    60,    57,    16,    16,    58,    15,    15,
    59,    15,    72,    15,    73,    16,    16,    77,    16,    15,
    16,    18,    18,    15,    78,    79,    16,    88,    19,    19,
    16,    18,    18,    89,    18,    92,    18,    93,    19,    19,
    94,    19,    18,    19,    26,    26,    18,   106,   nil,    19,
   nil,    27,    27,    19,    26,    26,   nil,    26,   nil,    26,
   nil,    27,    27,   nil,    27,    26,    27,    33,    33,    26,
   nil,   nil,    27,   nil,    34,    34,    27,    33,    33,   nil,
    33,   nil,    33,   nil,    34,    34,   nil,    34,    33,    34,
    35,    35,    33,   nil,   nil,    34,   nil,    36,    36,    34,
    35,    35,   nil,    35,   nil,    35,   nil,    36,    36,   nil,
    36,    35,    36,    37,    37,    35,   nil,   nil,    36,   nil,
    38,    38,    36,    37,    37,   nil,    37,   nil,    37,   nil,
    38,    38,   nil,    38,    37,    38,    39,    39,    37,   nil,
   nil,    38,   nil,    40,    40,    38,    39,    39,   nil,    39,
   nil,    39,   nil,    40,    40,   nil,    40,    39,    40,    41,
    41,    39,   nil,   nil,    40,   nil,    42,    42,    40,    41,
    41,   nil,    41,   nil,    41,   nil,    42,    42,   nil,    42,
    41,    42,    43,    43,    41,   nil,   nil,    42,   nil,    44,
    44,    42,    43,    43,   nil,    43,   nil,    43,   nil,    44,
    44,   nil,    44,    43,    44,    45,    45,    43,   nil,   nil,
    44,   nil,    46,    46,    44,    45,    45,   nil,    45,   nil,
    45,   nil,    46,    46,   nil,    46,    45,    46,    47,    47,
    45,   nil,   nil,    46,   nil,    74,    74,    46,    47,    47,
   nil,    47,   nil,    47,   nil,    74,    74,   nil,    74,    47,
    74,   nil,    74,    47,    74,   nil,    74,    76,    76,    64,
    74,    64,    64,    64,    64,   nil,   nil,    76,    76,   nil,
    76,   nil,    76,   nil,    76,   nil,    76,   nil,    76,    82,
    82,    65,    76,    65,    65,    65,    65,   nil,   nil,    82,
    82,   nil,    82,   nil,    82,    83,    83,   nil,   nil,    61,
    82,    61,    61,   nil,    82,    83,    83,   nil,    83,   nil,
    83,   nil,    83,    83,    83,   nil,    83,    84,    84,   nil,
    83,   nil,   nil,   nil,   nil,   nil,   nil,    84,    84,   nil,
    84,    84,    84,   nil,    84,   nil,    84,   nil,    84,    87,
    87,   nil,    84,   nil,   nil,   nil,    97,    97,   nil,    87,
    87,   nil,    87,   nil,    87,   nil,    97,    97,   nil,    97,
    87,    97,   nil,    97,    87,    97,   nil,    97,   100,   100,
   nil,    97,   nil,   nil,   nil,   nil,   nil,   nil,   100,   100,
   nil,   100,   nil,   100,   nil,   100,   nil,   100,   nil,   100,
   102,   102,   nil,   100,   nil,   nil,   nil,   nil,   nil,   nil,
   102,   102,   nil,   102,   nil,   102,   nil,   102,   nil,   102,
   nil,   102,   103,   103,   nil,   102,   nil,   nil,   nil,   nil,
   nil,   nil,   103,   103,   nil,   103,   nil,   103,   nil,   103,
   103,   103,   nil,   103,   104,   104,   nil,   103,   nil,   nil,
   nil,   nil,   nil,   nil,   104,   104,   nil,   104,   nil,   104,
   nil,   104,   nil,   104,   nil,   104,   105,   105,   nil,   104,
   nil,   nil,   nil,   nil,   nil,   nil,   105,   105,   nil,   105,
   nil,   105,   nil,   105,   nil,   105,   nil,   105,   nil,   nil,
    50,   105,    50,    50,    50,    50,    50,    50,    50,    50,
    50,    50,    50,    50,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    53,    50,    53,    53,    53,    53,    53,
    53,    53,    53,    53,    53,    53,    53,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    54,    53,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    54,    54,    54,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    96,
    54,    96,    96,    96,    96,    96,    96,    96,    96,    96,
    96,    96,    96,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    10,    96,    10,    10,    10,    10,    10,    10,
    10,    10,    10,    10,    10,    10,    48,   nil,    48,    48,
    48,    48,    48,    48,    48,    48,    48,    48,    48,    48,
    70,   nil,    70,    70,    70,    70,    70,    70,    70,    70,
    70,    70,    70,    70,    71,   nil,    71,    71,    71,    71,
    71,    71,    71,    71,    71,    71,    71,    71,    90,   nil,
    90,    90,    90,    90,    90,    90,    90,    90,    90,    90,
    90,    90,    69,   nil,    69,    69,    69,    69,    69,    69,
    69,    69,    69,    69,    69,    66,   nil,    66,    66,    66,
    66,    66,    66,    66,    66,    66,    66,    67,   nil,    67,
    67,    67,    67,    67,    67,    67,    67,    67,    67,    68,
   nil,    68,    68,    68,    68,    68,    68,    68,    68,    68,
    68 ]

racc_action_pointer = [
   -17,    17,     8,     4,   nil,     6,    32,   nil,    30,     8,
   630,   nil,   nil,   nil,    18,    52,    59,   nil,    75,    82,
   nil,   nil,   nil,   nil,   nil,   nil,    98,   105,   nil,    17,
   nil,    24,   nil,   121,   128,   144,   151,   167,   174,   190,
   197,   213,   220,   236,   243,   259,   266,   282,   644,    25,
   538,    -2,    52,   561,   584,    39,   nil,    62,    65,    68,
    58,   357,    14,    36,   317,   339,   713,   725,   737,   700,
   658,   672,    44,    45,   289,   nil,   311,    55,    56,    56,
   nil,   nil,   333,   349,   371,     8,   nil,   393,    61,    76,
   686,   nil,    71,    71,    76,   nil,   607,   400,   nil,   nil,
   422,   nil,   444,   466,   488,   510,    81,   nil ]

racc_action_default = [
    -3,   -57,   -12,    -2,    -5,   -57,   -57,    -1,   -11,   -57,
   -15,   -16,   -17,   -18,   -23,   -57,   -57,   -22,   -57,   -57,
   -39,   -40,   -41,   -42,   -43,   -44,   -57,   -57,    -4,   -57,
   108,   -57,   -14,   -57,   -57,   -57,   -57,   -57,   -57,   -57,
   -57,   -57,   -57,   -57,   -57,   -57,   -57,   -47,   -20,   -23,
   -57,   -57,   -38,   -57,   -57,    -8,   -13,   -25,   -26,   -27,
   -28,   -29,   -30,   -31,   -32,   -33,   -34,   -35,   -36,   -37,
   -19,   -49,   -57,   -46,   -57,   -24,   -57,   -57,   -57,    -7,
   -10,   -45,   -57,   -57,   -56,   -56,   -53,   -57,   -57,   -57,
   -48,   -21,   -57,   -57,   -57,   -52,   -57,   -57,    -9,   -50,
   -57,   -51,   -57,   -57,   -55,   -54,   -57,    -6 ]

racc_goto_table = [
     8,    48,    50,    86,    51,    52,    31,     4,    92,    94,
    28,    95,    53,    54,     1,     2,     7,     3,    78,    57,
    58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
    68,    69,    70,    71,    79,    72,    73,    85,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    90,   nil,
   nil,   nil,    83,    96,    84,   nil,   nil,   nil,   nil,   nil,
   nil,    31,    31,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   103,   nil,   nil,   104,   nil,
   105,    31,    31,    31 ]

racc_goto_check = [
     7,    10,    10,    22,    10,    10,     9,     5,    20,    20,
     5,    22,    10,    10,     1,     2,     3,     4,     6,    10,
    10,    10,    10,    10,    10,    10,    10,    10,    10,    10,
    10,    10,    10,    10,     8,    18,    19,    21,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    10,   nil,
   nil,   nil,     7,    10,     7,   nil,   nil,   nil,   nil,   nil,
   nil,     9,     9,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     7,   nil,   nil,     7,   nil,
     7,     9,     9,     9 ]

racc_goto_pointer = [
   nil,    14,    15,    14,    17,     7,   -37,    -2,   -21,    -2,
   -14,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   -12,   -11,
   -76,   -40,   -74 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     9,
    10,    11,    12,    13,    19,    20,    21,    22,   nil,   nil,
   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  2, 33, :_reduce_1,
  1, 34, :_reduce_none,
  0, 34, :_reduce_3,
  2, 36, :_reduce_4,
  1, 36, :_reduce_5,
  9, 37, :_reduce_6,
  1, 38, :_reduce_none,
  0, 38, :_reduce_8,
  3, 40, :_reduce_9,
  1, 40, :_reduce_10,
  1, 35, :_reduce_none,
  0, 35, :_reduce_12,
  3, 39, :_reduce_13,
  2, 39, :_reduce_14,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  3, 43, :_reduce_19,
  2, 45, :_reduce_20,
  5, 44, :_reduce_21,
  1, 42, :_reduce_22,
  1, 42, :_reduce_23,
  3, 42, :_reduce_24,
  3, 42, :_reduce_25,
  3, 42, :_reduce_26,
  3, 42, :_reduce_27,
  3, 42, :_reduce_28,
  3, 42, :_reduce_29,
  3, 42, :_reduce_30,
  3, 42, :_reduce_31,
  3, 42, :_reduce_32,
  3, 42, :_reduce_33,
  3, 42, :_reduce_34,
  3, 42, :_reduce_35,
  3, 42, :_reduce_36,
  3, 42, :_reduce_37,
  2, 42, :_reduce_38,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 46, :_reduce_none,
  1, 46, :_reduce_none,
  1, 46, :_reduce_none,
  4, 47, :_reduce_45,
  1, 50, :_reduce_none,
  0, 50, :_reduce_47,
  3, 51, :_reduce_48,
  1, 51, :_reduce_49,
  6, 48, :_reduce_50,
  6, 49, :_reduce_51,
  2, 53, :_reduce_52,
  1, 53, :_reduce_53,
  4, 54, :_reduce_54,
  3, 52, :_reduce_55,
  0, 52, :_reduce_56 ]

racc_reduce_n = 57

racc_shift_n = 108

racc_token_table = {
  false => 0,
  :error => 1,
  "^" => 2,
  :UNARY => 3,
  "*" => 4,
  "/" => 5,
  "+" => 6,
  "-" => 7,
  "<" => 8,
  "<=" => 9,
  ">" => 10,
  ">=" => 11,
  "==" => 12,
  "<>" => 13,
  "&" => 14,
  "|" => 15,
  :LITERAL => 16,
  :VARIABLE => 17,
  :FN => 18,
  :IF => 19,
  :ELSE => 20,
  :CASE => 21,
  :WHEN => 22,
  :WHILE => 23,
  :END => 24,
  :RETURN => 25,
  :NEWLINE => 26,
  "(" => 27,
  ")" => 28,
  "," => 29,
  "=" => 30,
  "!" => 31 }

racc_nt_base = 32

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"^\"",
  "UNARY",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\"<\"",
  "\"<=\"",
  "\">\"",
  "\">=\"",
  "\"==\"",
  "\"<>\"",
  "\"&\"",
  "\"|\"",
  "LITERAL",
  "VARIABLE",
  "FN",
  "IF",
  "ELSE",
  "CASE",
  "WHEN",
  "WHILE",
  "END",
  "RETURN",
  "NEWLINE",
  "\"(\"",
  "\")\"",
  "\",\"",
  "\"=\"",
  "\"!\"",
  "$start",
  "program",
  "declarations",
  "body",
  "function_definitions",
  "function_definition",
  "optional_function_definition_arguments",
  "statements",
  "function_definition_arguments",
  "statement",
  "expression",
  "assignment",
  "while",
  "return",
  "unary_operator",
  "function_call",
  "if_else",
  "case_when",
  "optional_function_call_arguments",
  "function_call_arguments",
  "maybe_else",
  "whens",
  "when" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.y', 26)
  def _reduce_1(val, _values)
     return [:program, val[0], val[1]]
  end
.,.,

# reduce 2 omitted

module_eval(<<'.,.,', 'parser.y', 30)
  def _reduce_3(val, _values)
     return []
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 33)
  def _reduce_4(val, _values)
     return val[0] << val[1]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 34)
  def _reduce_5(val, _values)
     return [val[0]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 39)
  def _reduce_6(val, _values)
     return [:function_definition, val[1], val[3], val[6]]
  end
.,.,

# reduce 7 omitted

module_eval(<<'.,.,', 'parser.y', 43)
  def _reduce_8(val, _values)
     return []
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 46)
  def _reduce_9(val, _values)
     return val[0] << val[2]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 47)
  def _reduce_10(val, _values)
     return [val[0]]
  end
.,.,

# reduce 11 omitted

module_eval(<<'.,.,', 'parser.y', 51)
  def _reduce_12(val, _values)
     return []
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 54)
  def _reduce_13(val, _values)
     return val[0] << val[1]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 55)
  def _reduce_14(val, _values)
     return [val[0]]
  end
.,.,

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

module_eval(<<'.,.,', 'parser.y', 63)
  def _reduce_19(val, _values)
     return [:assignment, val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 66)
  def _reduce_20(val, _values)
     return [:return, val[1]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 71)
  def _reduce_21(val, _values)
     return [:while, val[1], val[3]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 74)
  def _reduce_22(val, _values)
     return [:literal, val[0]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 75)
  def _reduce_23(val, _values)
     return [:variable, val[0]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 76)
  def _reduce_24(val, _values)
     return val[1]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 77)
  def _reduce_25(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 78)
  def _reduce_26(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 79)
  def _reduce_27(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 80)
  def _reduce_28(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 81)
  def _reduce_29(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 82)
  def _reduce_30(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 83)
  def _reduce_31(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 84)
  def _reduce_32(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 85)
  def _reduce_33(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 86)
  def _reduce_34(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 87)
  def _reduce_35(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 88)
  def _reduce_36(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 89)
  def _reduce_37(val, _values)
     return [:binary_operator, val[1], val[0], val[2]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 90)
  def _reduce_38(val, _values)
     return [:unary_operator, val[0], val[1]]
  end
.,.,

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

module_eval(<<'.,.,', 'parser.y', 98)
  def _reduce_45(val, _values)
     return [:function_call, val[0], val[2]]
  end
.,.,

# reduce 46 omitted

module_eval(<<'.,.,', 'parser.y', 102)
  def _reduce_47(val, _values)
     return []
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 105)
  def _reduce_48(val, _values)
     return val[0] << val[2]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 106)
  def _reduce_49(val, _values)
     return [val[0]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 112)
  def _reduce_50(val, _values)
     return [:if_else, val[1], val[3], val[4]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 118)
  def _reduce_51(val, _values)
     return [:case_when, val[1], val[3], val[4]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 121)
  def _reduce_52(val, _values)
     return val[0] << val[1]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 122)
  def _reduce_53(val, _values)
     return [val[0]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 126)
  def _reduce_54(val, _values)
     return [val[1], val[3]]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 130)
  def _reduce_55(val, _values)
     return val[2]
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 131)
  def _reduce_56(val, _values)
     return []
  end
.,.,

def _reduce_none(val, _values)
  val[0]
end

  end   # class Parser
end   # module ProceduralInterpreter
