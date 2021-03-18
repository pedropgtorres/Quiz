import 'package:flutter/material.dart';

/*
    Objetivo: Criar widget para as perguntas.
    Autor: Paulo Torres
    Data: 18/03/2021
*/

class Questao extends StatelessWidget{
  final String texto;
  
  Questao(this.texto);
  
  @override
  Widget build(BuildContext context){
    return Text(texto);
  }
}