#include <stdio.h>

#define MAX_STRING 150

void codifica_string(char *str);

int main(){
	char input[] = "Arquitetura de Computadores";
	
	printf("\nString original:\n%s\n\n", input);
	codifica_string(input);
	printf("String codificada:\n%s\n\n", input);
	
	return 0;
}
