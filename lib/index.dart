// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Cod1());
}

class Cod1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual a sua comida favorita?',
      'Qual o seu animal favorito',
      'Qual a sua cor favorita?',
    ];

    return MaterialApp(
      // Invés de receber um texto, estou retornando o Scaffold para mais opções de personalização.
      home: Scaffold(
        appBar: AppBar(
          // O que terei na appBar? Terei um texto, a cor dele vai ser vermelha e ficará centralizado
          title: Text('Teste'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text('Qual é a pergunta 1?'),
              Text(perguntas[0]),
              Text('Qual é a pergunta 2?'),
              Text(perguntas[1]),
              Text('Qual é a pergunta 3?'),
              Text(perguntas[2]),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
                child: Text('Responder pergunta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
