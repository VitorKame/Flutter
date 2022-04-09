import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Vagas na área de TI"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return ListView(
      children: <Widget>[
        _containerAnuncio(
            "Engenheiro de Software\n\nSalário: R\$ 4.580\n\nDescrição:  projetar e guiar o desenvolvimento de sistemas, aplicativos e programas.\n\n"),
        _containerAnuncio(
            "Analista de Sistemas\n\nSalário: R\$ 2.860\n\nDescrição: Desenvolver e implantar sistemas informatizados dimensionando requisitos e funcionalidade do sistema, auxiliando na especificação da sua arquitetura, escolhendo ferramentas de desenvolvimento, especificando programas, codificando aplicativos.\n\n"),
        _containerAnuncio(
            "Scrum Master\n\nSalário: R\$ 4.860\n\nDescrição: Scrum Master com experiência, com boa comunicação e personalidade de liderança.\n\n"),
      ],
    );
  }

  _containerAnuncio(String descricaoVaga) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Column(
            children: <Widget>[
              _foto('imagem.jpg'),
              _texto(descricaoVaga),
            ],
          ),
        ),
      ],
    );
  }

  _foto(String nomeFoto) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Image.asset(
        "assets/images/$nomeFoto",
        height: 150,
        width: 150,
        //fit: BoxFit.fill,
        //fit: BoxFit.contain,
        fit: BoxFit.cover,
      ),
    );
  }

  _texto(String descricaoVaga) {
    return Text(
      descricaoVaga,
      style: TextStyle(
          color: Colors.lightGreen, fontSize: 20, fontStyle: FontStyle.italic),
    );
  }
}
