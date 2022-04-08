  int n = 2, intervalo = 20;
  
  if(intervalo > n){
    for(int i = intervalo; i> 0; i--){
      print('$i * $n = ${i*n}');
    }
  }else{
    print('Valor do intervalo deve ser maior que o valor da tabuada');
  }
