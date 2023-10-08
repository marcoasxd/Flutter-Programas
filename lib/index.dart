// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(Cod1());
}

class Cod1 extends StatelessWidget {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // Invés de receber um texto, estou retornando o Scaffold para mais opções de personalização.
      home: Scaffold(
        appBar: AppBar(
          // O que terei na appBar? Terei um texto, a cor dele vai ser vermelha e ficará centralizado
          title: Text('Envie sua resposta'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Qual é o seu nome?', textAlign: TextAlign.left),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Responda aqui', 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), 
                      borderSide: BorderSide(color: Colors.red)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Text('Qual é a sua idade?', textAlign: TextAlign.left),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Responda aqui', 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), 
                      borderSide: BorderSide(color: Colors.red)),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                OutlinedButton(
                  onPressed: () {
                    isButtonPressed = !isButtonPressed;
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: isButtonPressed ? Colors.red : Colors.white),
                    foregroundColor: isButtonPressed ? Colors.white : Colors.white,
                    backgroundColor: isButtonPressed ? Colors.red : Colors.red,
                  ),
                  child: Text('Enviar'),
              ),
              ],
            ),
        ),
        ),
      );
  }
}
