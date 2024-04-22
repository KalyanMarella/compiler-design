%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
[01] {yylval = atoi(yytext); return digit;}
[\n] return 0;
. return yytext[0];
%%

int yywrap(){
	return 1;
}
