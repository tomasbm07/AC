#include <stdio.h>
#include "conversor.h"
 
int conversor(int number){
    long octalNumber = 0, i = 1;
    int remainder;
    while(number != 0){
        remainder = number % 8;
        number = number / 8;
        octalNumber = octalNumber + (remainder * i);
        i = i * 10;
    }
    return octalNumber;
}

int soma(int a, int b){
  return a + b;
}