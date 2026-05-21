%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
%}

%token NUMBER

%%

statement:
    expression '\n' { printf("Valid Expression\n"); }
;

expression:
    expression '+' term
    | expression '-' term
    | term
;

term:
    term '*' factor
    | term '/' factor
    | factor
;

factor:
    '(' expression ')'
    | NUMBER
;

%%

void yyerror(const char *s)
{
    printf("Syntax Error\n");
}

int main()
{
    printf("Enter arithmetic expression:\n");
    yyparse();
    return 0;
}