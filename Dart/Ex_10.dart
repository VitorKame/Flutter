  double a = 0.5, b = 25;
  double vlFinal = (0 + a * b) * 3.6;
    
  if(vlFinal <= 40){
    print('Veiculo muito lento');
  }else if(vlFinal > 40 && vlFinal <= 60){
    print('Velocidade Permitida');
  }else if(vlFinal > 60 && vlFinal <= 80){
    print('Velocidade de cruzeiro');
  }else if(vlFinal > 80 && vlFinal <= 120){
    print('Veiculo rápido');
  }else{
    print('Veiculo muito rápido');
  } 
