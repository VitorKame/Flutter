var nome = ['Marcio','Nicole','Larissa','Bruno','Lucia'];
var sexo = ['M','F','F','M','F'];
var idade = [25,26,20,37,12];

for(var i = 0; i < 5; i++){
  if(sexo[i] == 'F'){
    print('Nome:${nome[i]}');
    print('Sexo:${sexo[i]}');
    print('Idade:${idade[i]}');
  }
}