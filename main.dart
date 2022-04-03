import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const widgetHome(),
    );
  }
}

// ignore: camel_case_types
class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primeiro App"),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text("Bem Vindo!",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 80, 36, 184),
                decoration: TextDecoration.underline,
              )),
        ),
      ),
    );
  }
}
