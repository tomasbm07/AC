#include <stdio.h>

int max (int arr[], int n);

int min (int arr[], int n);

int main (){
	int size, i;
	int vMax, vMin;
	
	printf("Size of array: ");
	scanf("%d", &size);
	int arr[size];
	
	for(i = 0; i < size; i++){
		printf("num: ");
		scanf("%d", &arr[i]);
	}
	
	vMax = max(arr, size);
	vMin = min(arr, size);
	
	printf ("O valor maximo: %d\n",vMax);
	printf ("O valor minimo: %d\n",vMin);
	
	return 0;
}
