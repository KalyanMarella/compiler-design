%{
#include<stdio.h>
int flag = 0;
%}

%token digit
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%

arithmrticexp: E{
	printf("The valus is: %d",$$);
	return 0;	
	}
	
E:E '+' E {$$ = $1 + $3;}
|E '-' E {$$ = $1 - $3;}
|E '*' E {$$ = $1 * $3;}
|E '/' E {$$ = $1 / $3;}
|E '%' E {$$ = $1 % $3;}
|'(' E ')' {$$ = $2;}
|digit {$$ = $1;}
;
%% 

void main(){
	
	printf("Enter the arithmetic expression: ");
	yyparse();
	
	if(!flag){
		printf("\nValid");
	}	
	
}

void yyerror(){
	
	printf("Invalid");
	flag = 1;
	
}
