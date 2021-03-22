import 'package:flutter/material.dart';
import 'package:quiz/questionario.dart';
import 'package:quiz/resultado.dart';

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

  final List<Map <String,Object>> _perguntas = const [
    {
      'pergunta':'Qual é a sua cor favorita?',
      'resposta':['Preto','Vermelho','Verde','Branco']
    },
    {
      'pergunta':'Qual é a seu animal favorito?',
      'resposta':['Coelho','Cobra','Elefante','Leão']
    },
    {
      'pergunta':'Qual seu instrutor favorito?',
      'resposta':['Maria','João','Leo','Pedro']
    }
  ];

  void _responder(){
    setState(() {
        _perguntaSelecionada++;
    });
  }

  bool get temPergSelect{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPergSelect ? _perguntas[_perguntaSelecionada]['resposta'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: temPergSelect
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
        )
            : Resultado()
      ),
    );
  }
}

