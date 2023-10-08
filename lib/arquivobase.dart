

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ArquivoBase());
}

class ArquivoBase extends StatelessWidget {
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arquivo base do flutter'),
          backgroundColor: Colors.blue,
        ),
        body: Text('Olá flutter'),
      ),
    );
  }
}