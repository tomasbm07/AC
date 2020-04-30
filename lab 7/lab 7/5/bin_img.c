void bin_img(unsigned char *ptr, int w, int h, unsigned char limiar){
	int i, j;
	for(i = 0; i < w * h; i++){
		if(*ptr > limiar)
			*ptr = 255;
		else
			*ptr = 0;
		ptr++;
	}
}