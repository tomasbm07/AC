#include <stdio.h>

int programa(int* a);
int PolyCalc(int a, int b, int c, int d, int, e);

int main(){
	int vec[5]={4, 2, 10, 1, 6}, f;
	f = programa(vec);
	
	// Imprimir Resultados Calculados em Assembly e em C
	printf("Resultado Calculado na Funcao Assembly: %d\n",f);
	printf("Resultado Calculado em C: %d\n", 5*(vec[0]+vec[1])*(vec[2]-3*vec[3]*vec[4]));
	printf("%d, %d, %d, %d, %d", vec[0], vec[1], vec[2], vec[3], vec[4]);
}
