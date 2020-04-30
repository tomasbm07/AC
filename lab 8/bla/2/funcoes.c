int max(int a, int b, int c, int d){
	int arr[4] = {a, b, c, d}, i, max = arr[0];
	int size = sizeof(arr)/sizeof(arr[0]);
	for(i = 1; i < size; i++){
		if(arr[i] > max)
			max = arr[i];
	}
	return max;
}

int min(int a, int b, int c, int d){
	int arr[4] = {a, b, c, d}, i, min = arr[0];
	int size = sizeof(arr)/sizeof(arr[0]);
	for(i = 1; i < size; i++){
		if(arr[i] < min)
			min = arr[i];
	}
	return min;
}