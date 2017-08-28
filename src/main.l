
%{
#include <stdio.h>
#include <string.h>
%}

%%
[(A-Z)(a-z)(0-9)][(A-Z)(a-z)(0-9)(\.)(\-)(\_)]+[(A-Z)(a-z)(0-9)][@][(A-Z)(a-z)(0-9)]*[(A-Z)(a-z)(0-9)(\.)(\-)(\_)]*[(A-Z)(a-z)(0-9)]{1} {
    printf("%s\n", (yytext));
}
. ;
\n ;
%%

int main() {
  yylex();
  return 0;
}
