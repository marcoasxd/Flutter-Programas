// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, annotate_overrides, avoid_print

/*
  * appBar: exemplo de PARÂMETRO NOMEÁVEL, sempre vai receber um COMPONENTE.
  * Text(): exemplo de COMPONENTE.
*/


import 'package:flutter/material.dart';

main() => runApp(new ProgramaApp());

@override // método que o 
class ProgramaApp extends StatelessWidget { 
  void respondendo() {
    perguntasSelecionadas++;
    print('Resposta enviada!');
  }

  // void Function() funcaoRetornaOutraFuncao() {
  //     return () {
  //        print('Pergunta respondida!');
  //     };
  // }
      final perguntas = [
      'Qual a sua cor favorita?',
      'Qual a sua altura?'
      'Qual é o seu animal favorito?'

    ];

    var perguntasSelecionadas = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar( //appBar é um parâmetro nomeável, tudo que começar em minusculo é um parâmetro nomeável. No caso, appBar vai ter um componente chamado AppBar
          title: Text('Teste'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntasSelecionadas]),
            ElevatedButton( // ElevatedButton aka RaisedButton
              onPressed: respondendo,
              child: Text('Resposta 1'),
               // O "child define que esse componente pode receber apenas um unico filho"
            ),
            ElevatedButton(
              onPressed: respondendo,
              child: Text('Resposta 2'),
               // O "child define que esse componente pode receber apenas um unico filho"
            ),
            ElevatedButton(
              onPressed: respondendo,
              child: Text('Resposta 3'),
               // O "child define que esse componente pode receber apenas um unico filho"
            ),
          ],
        ),
      ),
    );
  }
}