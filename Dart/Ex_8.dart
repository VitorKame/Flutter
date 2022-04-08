  double a = 2, b = 2, c = 5;
  
  if(a+b<c || a+c<b || b+c<a){
    print('Não é possivel formar um triangulo com esses valores');
  }else if(a == b && b == c){
    print('Triângulo equilátero');
  }else if(a != b && b != c){
    print('Triângulo escaleno');
  }else{
    print('Triângulo isósceles');
  }
