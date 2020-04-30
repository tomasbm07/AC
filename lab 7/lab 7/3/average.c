#include <stdio.h>

int read_values(double *sum){
  int values=0, input=0;
  *sum = 0; // Erro aqui (antes: sum = 0;)
  printf("Enter input values (enter 0 to finish):\n");
  scanf("%d", &input);
  while(input != 0) {
    values++;
    *sum += input; // Erro aqui (antes: sum+=input;)
    scanf("%d", &input); // Erro aqui (antes scanf("%d", input);)
  }
  return values;
}

int main(){
  double sum=0;
  int values;
  values = read_values(&sum); // Erro aqui (antes: values read_values(sum);)
  printf("Average: %g\n", sum/values);
  return 0;
}