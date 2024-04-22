%{
#include<stdio.h>
int flag = 0;
%}

%left '(' ')' 

%%

L: L '(' L ')' {}
| {}
;

%%

void main(){
	
	printf("Enter the paranthesis: ");
	yyparse();
	
	if(!flag){
		printf("Valid");
	}	
	
}

void yyerror(){
	flag = 1;
	printf("Invalid");
}
