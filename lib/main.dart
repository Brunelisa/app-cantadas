import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {



  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _frases = [
    "Você não é colesterol, mas afetou meu coração bb.",
    "Me chama de anjo que te levo para conhecer o céu da minha boca.",
    "Me chama de Alice e vem se perder no país das maravilhas comigo.",
    "As coisas não estão fáceis para você, mas eu estou.",
    "Você não merece palmas, merece o tocantins inteiro.",
    "Me chama de Lula e me prende nos teus braços."
  ];

  var _fraseGerada = "Clique no botão abaixo para gerar sua cantada.";

  int _count = 0;

  void increment(){
    setState(() {
      _count = new Random().nextInt(_frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Cantadas topper"),
      ),
      body: Center(
        child: Container(


          padding: EdgeInsets.all(20),
          //width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Image.asset(
                  "images/emoji_cantada.png",

              ),

              Text(
                "CANTADAS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.amber,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 50),
                child: Text(

                _fraseGerada,
                style: TextStyle(fontSize: 20, ),
              )),

              RaisedButton(
                color: Colors.orangeAccent,
                onPressed: (){
                  _fraseGerada = _frases[_count];
                  increment();
                },
                child: Text(
                  "Nova Cantada",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      )

      );

  }
}
