var numeros = [02,18,4,82,64,34,18,125,100,10,22,60,05,42,19,95,14,12,191,35];
int multiplicador = 2;
  
  print("Array>> $numeros");
  
  for(int i = 9; i >= 0; i--){
    numeros[i] = numeros[i] * multiplicador;
  }
  
  print("Array multiplicado >> $numeros}");