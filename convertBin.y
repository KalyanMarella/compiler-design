%{
#include<stdio.h>
%}

%token digit

%%
convert: L{
	printf("Decimal form is: %d",$$);
	return;
}

L: L B { $$ = 2 * $1 + $2;}
| B {$$ = $1;}
B: digit{$$ = $1;}
;
%%

void main(){
	printf("Enter the binary number: ");
	yyparse();
}

void yyerror(){
	printf("Invalid");
}


