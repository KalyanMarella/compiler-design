
%{
#include<stdio.h>
%}

%token digit
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%

E: E '+' E {printf("+");}
| E '-' E {printf("-");}
| E '*' E {printf("*");}
| E '/' E {printf("/");}
| '(' E ')' {}
| digit {printf("%d",$1);}
;

%%


void main(){
	printf("Enter the inorder expression: ");
	yyparse();
}

void yyerror(){
	
}

