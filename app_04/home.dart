import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcularVantagem() {
    setState(() {
      double valorAlcool = double.parse(alcoolController.text);
      double valorGasolina = double.parse(gasolinaController.text);

      double resultado = valorAlcool / valorGasolina;

      if (resultado <= 0.7) {
        infoResultado = 'A melhor escolha é Alcool';
      } else {
        infoResultado = 'A melhor escolha é Gasolina';
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
          _campo("Valor Alcool", alcoolController),
          _campo("Valor Gasolina", gasolinaController),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://cdn3.iconfinder.com/data/icons/materia-buildings-vol-3/24/017_109_gas_fuel_gasoline_diesel_petroleum_station-512.png',
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
