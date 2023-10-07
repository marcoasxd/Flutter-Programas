// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp2());

class PerguntaApp2 extends StatelessWidget {

  @override
  Widget build (BuildContext context) {

    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu nimal favorito',
    ];

    void responder() {
      print('Pergunta respondida!');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(1)),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1')
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2')
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 3 selecionada!!!!!!!!'),
              child: Text('Resposta 3')
            )
          ],
        ),
      ),
    );
  }
}