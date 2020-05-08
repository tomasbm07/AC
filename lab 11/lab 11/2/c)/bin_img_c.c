void bin_img_c(unsigned char *ptr, int w, int h){
	int limiar = 0, sum = 0, i;
	unsigned char *aux;
	
	//Calcular o Limiar
	aux = ptr;
	for(i = 0; i <= w*h; i++){
		sum += *ptr;
		ptr++;
	}
	limiar = sum / (w*h);
	

	//Comprar os pixeis com o Limiar
	ptr = aux;
	for(i = 0; i <= w*h; i++){
		if(*ptr > limiar)
			*ptr = 0;
		else
			*ptr = 255;
		ptr++;
	}
}