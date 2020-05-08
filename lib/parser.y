class ProceduralInterpreter::Parser
prechigh
  right '^'
  right UNARY
  left '*' '/'
  left '+' '-'
  left '<' '<=' '>' '>='
  right '==' '<>'
  left '&'
  left '|'
preclow

token
  LITERAL VARIABLE
  FN
  IF ELSE
  CASE WHEN
  WHILE
  END
  RETURN
  NEWLINE

options no_result_var

rule
  program:
    declarations body { return [:program, val[0], val[1]] }

  declarations:
    function_definitions
    | /* empty */        { return [] }

  function_definitions:
    function_definitions function_definition  { return val[0] << val[1] }
    | function_definition { return [val[0]] }

  function_definition:
    FN VARIABLE '(' optional_function_definition_arguments ')' NEWLINE
      statements
    END NEWLINE { return [:function_definition, val[1], val[3], val[6]] }

  optional_function_definition_arguments:
    function_definition_arguments
    | /* empty */                         { return [] }

  function_definition_arguments:
    function_definition_arguments ',' VARIABLE { return val[0] << val[2] }
    | VARIABLE                                 { return [val[0]] }

  body:
    statements
    | /* empty */ { return [] }

  statements:
    statements statement NEWLINE { return val[0] << val[1] }
    | statement NEWLINE          { return [val[0]] }

  statement:
    expression
    | assignment
    | while
    | return

  assignment: VARIABLE '=' expression { return [:assignment, val[0], val[2]] }

  return:
    RETURN expression { return [:return, val[1]] }

  while:
    WHILE expression NEWLINE
      statements
    END                      { return [:while, val[1], val[3]] }

  expression:
    LITERAL                      { return [:literal, val[0]] }
    | VARIABLE                   { return [:variable, val[0]] }
    | '(' expression ')'         { return val[1] }
    | expression '^' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '*' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '/' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '+' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '-' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '<' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '<=' expression { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '>' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '>=' expression { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '==' expression { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '<>' expression { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '&' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | expression '|' expression  { return [:binary_operator, val[1], val[0], val[2]] }
    | unary_operator expression  { return [:unary_operator, val[0], val[1]] } =UNARY
    | function_call
    | if_else
    | case_when

  unary_operator: '-' | '+' | '!'

  function_call:
    VARIABLE '(' optional_function_call_arguments ')' { return [:function_call, val[0], val[2]] }

  optional_function_call_arguments:
    function_call_arguments
    | /* empty */                   { return [] }

  function_call_arguments:
    function_call_arguments ',' expression { return val[0] << val[2] }
    | expression                           { return [val[0]] }

  if_else:
    IF expression NEWLINE
      statements
    maybe_else
    END                   { return [:if_else, val[1], val[3], val[4]] }

  case_when:
    CASE expression NEWLINE
    whens
    maybe_else
    END                     { return [:case_when, val[1], val[3], val[4]] }

  whens:
    whens when { return val[0] << val[1] }
    | when     { return [val[0]] }

  when:
    WHEN expression NEWLINE
      statements            { return [val[1], val[3]] }

  maybe_else:
    ELSE NEWLINE
      statements  { return val[2] }
    | /* empty */ { return [] }
end

---- inner

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
