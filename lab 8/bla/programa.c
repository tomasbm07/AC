int programa(int* a){
	PolyCalc(a[0], a[1], a[2], a[3], a[4]);
	
	return 0;
}

int PolyCalc(int a, int b, int c, int d, int e){
	int f = 5*(a+b)*(c-3*d*e);
	
	return f;
}