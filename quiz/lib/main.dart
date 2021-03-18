import 'package:flutter/material.dart';
import 'package:quiz/questao.dart';
import 'package:quiz/resposta.dart';

/*
    Objetivo: Criar um app que simule um quiz.
    Autor: Paulo Torres
    Data: 08/03/2021
*/

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget{
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }

}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada=0;

  void _Responder(){
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    final List<String> respostas = [
      'Resposta 1',
      'Resposta 2',
      'Resposta 3'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta(respostas[0]),
            Resposta(respostas[1]),
            Resposta(respostas[2])
          ],
        ),
      ),
    );
  }
}

