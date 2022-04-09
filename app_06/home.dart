import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String infoResultado = "Informe os números!";

  void _calcularVantagem() {
    setState(() {
      int numero = new Random().nextInt(10);
      infoResultado = numero.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: const Text("Jogo do N° Aleatório"),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(96, 190, 146, 1),
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
          _foto(),
          const SizedBox(height: 40),
          _texto("Pense em um n° de 0 a 10"),
          const SizedBox(height: 40),
          _texto(infoResultado),
          const SizedBox(height: 40),
          _botao(),
        ],
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://img.icons8.com/plasticine/400/question-mark.png',
        height: 150,
        width: 150,
      ),
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularVantagem,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Color.fromRGBO(96, 190, 146, 1),
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Color.fromRGBO(96, 190, 146, 1),
          fontSize: 25.0,
          fontWeight: FontWeight.bold),
    );
  }
}
