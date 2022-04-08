  final produtos = [2,2,2,2,2];
  double total = 0;
  double pagamento = 12;
  
  for(num produto in produtos){
    total += produto;
  }
  
  print('Total: R\$ $total');
  print('Pagamento: R\$ $pagamento');
  
  if(pagamento >= total){
    print('Troco: R\$ ${pagamento - total}'); 
  }else{
    print('Falta: R\$ ${total - pagamento}'); 
  }
