import 'package:flutter/material.dart';

/*
    Objetivo: Criar um app que simule um quiz.
    Autor: Paulo Torres
    Data: 08/03/2021
*/

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget{
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}

class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada=0;

  void Responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
                onPressed: Responder,
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

