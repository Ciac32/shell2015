%{
#include "y.tab.h"
%}

%%
"CD"		{return cd_command;}
"LS"		{return exit_command;}
"Bye"		{return ls_command;}
[a-zA-z]+	{yylval.word = strdup(yytext); return letters;}
[ \t]		{;}
"\n"		{return yytext[0];}
.		{ECHO; yyerror("unexpected character");}
%%
int yywrap(void) {return 1;}