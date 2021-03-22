import 'package:flutter/material.dart';

/*
    Objetivo: Criar classe para exibir o resultado.
    Autor: Paulo Torres
    Data: 22/03/2021
*/


class Resultado extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Parabéns!!!',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 28),
      ),
    );
  }
}