var numeros = [02,18,4,82,64,34,18,125,100,10];
int maior=0;
  
  print("Valores: $numeros");
  
  for(int x = 9; x >= 0; x--){
    
    if(maior < numeros[x]){
      maior = numeros[x];
    }
    
  }
  
  print("Maior número >> $maior}");
