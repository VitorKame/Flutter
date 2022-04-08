int n1 = 5;
int n2 = 2; 

print(n2);
print(n1);

       for(int x = 0; x < 20; x++){  
              if(x == 0){
                     n1+= n2 + 3;
                     n2 = n1 - 6; 
              }else{
                     n1+= n2 + 3;
                     n2 = n1 - 11; 
              }
              print(n1);
       }
