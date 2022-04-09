import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String de = 'De';
  String para = 'Para';
  String resposta = "";
  double resultado = 0;

  double v1 = 0;

  TextEditingController n1Controller = TextEditingController();

  void _ExibirTexto() {
    v1 = double.parse(n1Controller.text);

    setState(() {
      if (de == 'Dólar' && para == 'Reais') {
        resultado = v1 * 4.66;
      } else if (de == 'Dólar' && para == 'Euros') {
        resultado = v1 * 0.91;
      } else if (de == 'Dólar' && para == 'Dólar') {
        resultado = v1;
      } else if (de == 'Reais' && para == 'Dólar') {
        resultado = v1 * 0.21;
      } else if (de == 'Reais' && para == 'Euros') {
        resultado = v1 * 0.19;
      } else if (de == 'Reais' && para == 'Reais') {
        resultado = v1;
      } else if (de == 'Euros' && para == 'Reais') {
        resultado = v1 * 5.15;
      } else if (de == 'Euros' && para == 'Dólar') {
        resultado = v1 * 1.10;
      } else if (de == 'Euros' && para == 'Euros') {
        resultado = v1;
      }
      resposta = "Conversão: $resultado";
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
      title: Text("CONERVSOR DE MOEDA"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //_imagem(),
          _campo("Valor:", n1Controller),
          _dropdownDe(),
          _dropdownPara(),
          _botao(),
          _Resposta(resposta),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
      controller: objController,
    );
  }

  _dropdownDe() {
    return DropdownButton<String>(
      value: de,
      items: <String>['De', 'Dólar', 'Reais', 'Euros'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          de = valorSelecionado!;
        });
      },
    );
  }

  _dropdownPara() {
    return DropdownButton<String>(
      value: para,
      items: <String>['Para', 'Dólar', 'Reais', 'Euros'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          para = valorSelecionado!;
        });
      },
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _ExibirTexto,
          child: Text("Converter",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _Resposta(Resposta) {
    return Text(
      Resposta,
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
    );
  }
}
