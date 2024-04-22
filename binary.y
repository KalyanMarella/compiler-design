%{
#include <stdio.h>
#include "y.tab.h"
int count = 0;
int flag = 0;
%}

%token digit

%%
L: L  B {}
| B {}
B: digit {count = count + 1;};
%%

void main()
{
	
	printf("Enter the binary number: ");
	yyparse();
	
	if(flag == 0)
	{
		printf("\nNumber of digits is %d",count);
	}	
	
}

void yyerror()
{
	printf("Invalid");
	flag = 1;
}

