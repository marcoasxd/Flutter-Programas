// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto); // Criei um construtor, que irá saber que o primeiro parâmetro irá ser setado em "texto"

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Serve para inserir o valor máximo do double
      margin: EdgeInsets.all(10),
      child: Text(
        texto, 
        style: TextStyle(
        color: Colors.black87, 
        fontSize: 20,
        ),
        textAlign: TextAlign.center,
        ),
    ); // Como não tenho acesso a "perguntas" pq eh privado, eu espero receber um valor pelo construtor do componente
  }
}
