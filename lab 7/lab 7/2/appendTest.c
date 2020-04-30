#include <stdio.h>
#include <string.h>

/*
    Return the result of appending the characters in s2 to s1.
    Assumption: enough space has been allocated for s1 to store the extra
    characters.
*/
char* append (char s1[], char s2[], char s3[]) {
    int s1_len = strlen (s1);
    int s2_len = strlen (s2);
    int s3_len = strlen (s3);

    int k;
    for (k=0; k<s2_len; k++) {
        s1[k+s1_len] = s2[k];
    }
	
	for (k=0; k<s3_len; k++) {
        s1[k+s1_len+s2_len] = s3[k];
        if(k == s3_len - 1)
          s1[k + s1_len + s2_len + 1] = '\0';
    }
	
    return s1;
}

int main ( ) {
    char str1[20];
    char str2[20];
	  char str3[20];
    while (1) {
        printf ("str1 = ");
        if (!gets (str1)) {
            return 0;
        };
        printf ("str2 = ");
        if (!gets (str2)) {
            return 0;
        };
		
		printf ("str3 = ");
        if (!gets (str3)) {
            return 0;
        };
        printf ("The result of appending str3 to str2 and to str1 is %s.\n", append (str1, str2, str3));
    }
    return 0;
}
