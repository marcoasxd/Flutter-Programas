// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Cod1());
}

class Cod1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Invés de receber um texto, estou retornando o Scaffold para mais opções de personalização.
      home: Scaffold(
        appBar: AppBar(
          // O que terei na appBar? Terei um texto, a cor dele vai ser vermelha e ficará centralizado
          title: Text('Teste'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Text('Olá Flutter.'),
      ),
    );
  }
}
