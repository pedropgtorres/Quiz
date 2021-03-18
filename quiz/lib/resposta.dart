import 'package:flutter/material.dart';

/*
    Objetivo: Criar classe para as respostas.
    Autor: Paulo Torres
    Data: 18/03/2021
*/

class Resposta extends StatelessWidget{
  final String resposta;

  Resposta(this.resposta);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        onPressed: (){

        },
        child: Text(resposta),
        style: ElevatedButton.styleFrom(
            primary: Colors.blue
        )
        );
  }
}