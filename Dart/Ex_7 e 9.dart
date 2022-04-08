  double peso = 2 , 
         altura = 10,
         imc = peso/ (altura*altura);
  
  String sexo = "F";
  
  
  if(sexo == "F"){
    if(imc <= 19){
      print('Abaixo do peso');
    }else if(imc >= 24){
      print('Peso ideal');
    }else{
      print('Acima do peso');
    }
  }
  
  if(sexo == "M"){
    if(imc <= 20){
      print('Abaixo do peso');
    }else if(imc >= 25){
      print('Peso ideal');
    }else{
      print('Acima do peso');
    }
  }
