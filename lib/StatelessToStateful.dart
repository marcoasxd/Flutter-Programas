// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import './questao1.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() { // Vai ficar monitorando o estado
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              //Text(perguntas[perguntaSelecionada]), # substituido por: 
              Questao(perguntas[_perguntaSelecionada]), // separei por componentes, ver em questao1.dart
              // Separei os ElevatedButton por um componente. Ver em resposta.dart
              Resposta('Resposta 1'),
              Resposta('Resposta 1'),
              Resposta('Resposta 1'),
            ],
          ),
        ),
      ),
    );
  }
}
// Componente continua público
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
