import 'package:flutter/material.dart';
import 'package:quiz/questao.dart';

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
    print(_perguntaSelecionada);
  }

  void Resposta(){
    print('Resposta 1...');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
                onPressed: _Responder,
                child: Text('Resposta 1')
            ),
            ElevatedButton(
                onPressed: () {
                  print('Resposta 2...');
                },
                child: Text('Resposta 2')
            ),
            ElevatedButton(
                onPressed: () => print('Resposta 3...'),
                child: Text('Resposta 3')
            ),
            ElevatedButton(
                onPressed: null,
                child: Text('Desabilitado')
            )
          ],
        ),
      ),
    );
  }
}

