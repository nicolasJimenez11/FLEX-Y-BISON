%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(const char *s);
%}

/* tokens que devuelve el lexer */
%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%

/* Lee lineas y imprime el resultado */
calcset:
    calclist
;

calclist:
    /* vacio */
  | calclist exp EOL   { printf("= %d\n", $2); }
;

/* exp: suma/resta (nivel mas bajo) */
exp:
    factor
  | exp ADD factor     { $$ = $1 + $3; }
  | exp SUB factor     { $$ = $1 - $3; }
;

/* factor: mult/div (nivel medio) */
factor:
    term
  | factor MUL term    { $$ = $1 * $3; }
  | factor DIV term    { $$ = $1 / $3; }
;

/* term: numero o abs (nivel mas alto) */
term:
    NUMBER
  | ABS term           { $$ = ($2 >= 0) ? $2 : -$2; }
;

%%

int main(void) {
  return yyparse();
}

void yyerror(const char *s) {
  fprintf(stderr, "Error: %s\n", s);
}

