import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
 
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {
  TextEditingController cepController = TextEditingController();
  String info_endereco = '';
 
  _recuperarCep() async {
    String url = 'https://api.github.com/users/${cepController.text}';
 
    print(url);
 
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    int id = retorno["id"];
    String nome = retorno["login"];
    String repositorio = retorno["repos_url"];
    String dtCriacao = retorno["created_at"];
    int seguidores = retorno["followers"];
    int seguindo = retorno["following"];
 
    setState(() {
      info_endereco =
          'ID: $id \nNome: $nome \nRepositório: $repositorio \nCriado em: $dtCriacao \nSeguidores: $seguidores \nSeguindo: $seguindo';
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GitHub"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Digite o Login",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: cepController,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: _recuperarCep,
                  child: Text("Consultar",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  color: Colors.blue,
                ),
              ),
            ),
            Text(info_endereco),
          ],
        ),
      ),
    );
  }
}
