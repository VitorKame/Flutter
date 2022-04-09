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
      title: Text(
        'Anúncios',
        style: TextStyle(color: Colors.red, fontSize: 25),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  _corpo() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.yellow,
        child: Column(
          children: <Widget>[
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 452,
      child: PageView(
        children: <Widget>[
          for (int i = 0; i < 5; i++) _containerAnuncio(),
        ],
      ),
    );
  }

  _containerAnuncio() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Column(
            children: <Widget>[
              _foto2('rock1.jpg'),
              _texto(),
            ],
          ),
        ),
      ],
    );
  }

  _foto2(String nomeFoto) {
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

  _texto() {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
