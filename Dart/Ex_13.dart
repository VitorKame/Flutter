int n1 = 0;
int n2 = 0;  
  
  for(int x = 0; x < 30; x++){
      for(int i = 1; i < x; i++){
              if(i == 1){
                     n1 = 1;
                     n2=0;
              }else{
                     n1+=n2;
                     n2 = n1 - n2;
              }   
       }   
     print(n1);
  }