import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcularVantagem() {
    setState(() {
      double peso = double.parse(pesoController.text);
      num altura = pow(double.parse(alturaController.text), 2);

      double resultado = peso / altura;

      if (resultado < 18.5) {
        infoResultado = 'Abaixo do Peso';
      } else if (resultado >= 18.5 && resultado < 24.9) {
        infoResultado = 'Peso Normal';
      } else if (resultado >= 25 && resultado < 29.9) {
        infoResultado = 'Sobrepeso';
      } else if (resultado >= 30 && resultado < 34.9) {
        infoResultado = 'Obesidade Grau I';
      } else if (resultado >= 35 && resultado < 39.9) {
        infoResultado = 'Obesidade Grau II';
      } else {
        infoResultado = 'Obesidade Grau III ou Mórbida';
      }
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
      title: const Text("Alcool ou Gasolina"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _foto(),
          _campo("Peso", pesoController),
          _campo("Altura", alturaController),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://cdn1.iconfinder.com/data/icons/medical-vol-1-24/80/19-512.png',
        height: 150,
        width: 150,
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.purple)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.purple, fontSize: 25.0),
      controller: objController,
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
          color: Colors.purple,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.purple, fontSize: 25.0),
    );
  }
}
