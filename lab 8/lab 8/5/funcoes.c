int max(int arr[], int size){
	int i, max = arr[0];
	for(i = 1; i < size; i++){
		if(arr[i] > max)
			max = arr[i];
	}
	return max;
}

int min(int arr[], int size){
	int i, min = arr[0];
	for(i = 1; i < size; i++){
		if(arr[i] < min)
			min = arr[i];
	}
	return min;
}