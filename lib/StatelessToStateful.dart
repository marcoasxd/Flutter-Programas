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
  }

  @override
  Widget build(BuildContext context) {
    // Não preciso de deixar "final List <Map<String, Object>> perguntas", posso simplesmente deixar como "final perguntas"
    final List <Map<String, Object>> perguntas = [ // Isso eh uma lista de Map agora, antes tinha só as perguntas. Map é uma lista Chave (pergunta), Valor (resposta)
      {
        'Texto': 'Qual é a sua cor favorita?',
        'Resposta': ['Preto', 'Vermelho', 'Azul', 'Outras']
      },
      {
        'Texto': 'Qual é o seu animal favorito?',
        'Resposta': ['Cachorro', 'Jacaré', 'Camaleão', 'Jabuti']
      },
      {
        'Texto': 'Qual é a sua estação do ano favorita?',
        'Resposta': ['Verão', 'Primavera', 'Inverno', 'Outono']
      }
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
              Questao(perguntas[_perguntaSelecionada]['texto'].toString()), // separei por componentes, ver em questao1.dart
              // Separei os ElevatedButton por um componente. Ver em resposta.dart
              Resposta('Resposta 1', _responder),
              Resposta('Resposta 1', _responder),
              Resposta('Resposta 1', _responder),
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
