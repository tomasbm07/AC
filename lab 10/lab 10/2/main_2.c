#include <stdio.h>

void manipula_array(int *ptr, int dim);

int main(){
	int i;	
	int array[]={1,2,3,4,5,6,7,8,9,10}; 
	//int array[] = {20,30,40};
	int dim = sizeof(array)/sizeof(array[0]);
	
	printf("Array original: ");
	for(i=0;i<dim-1;i++){
		printf("%d -> ",array[i]);
	}
	printf("%d \n",array[dim - 1]);
	
	manipula_array(array, dim);
	
	printf("Array manipulado e invertido: ");
	for(i=0;i<dim-1;i++){
		printf("%d -> ",array[i]);
	}
	printf("%d\n",array[dim -1]);
		
return 0;
}
