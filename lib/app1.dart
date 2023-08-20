// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';
// Primeiro criamos o main()
 main() => runApp(new PerguntaApp()); // Para a aplicação rodar, chamamos o "RunApp" e passamos uma instância do StatelessWidget

// Depois criamos a classe do nosso programa. Para ele virar um Widget, devemos herdar da classe StatelessWidget
class PerguntaApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Olá Flutter'), // home: parâmetro nomeável. Text(): parâmetros posicionais (são obrigatórios)
    );
  }
}