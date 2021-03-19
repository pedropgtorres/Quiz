import 'package:flutter/material.dart';

/*
    Objetivo: Criar classe para as respostas.
    Autor: Paulo Torres
    Data: 18/03/2021
*/

class Resposta extends StatelessWidget{
  final String resposta;
  final void Function() onSelect;

  Resposta(this.resposta, this.onSelect);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
        child: ElevatedButton(
            onPressed: onSelect,
            child: Text(resposta,
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue
            )
        ),
    );
  }
}