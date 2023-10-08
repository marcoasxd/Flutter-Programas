// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoResposta;

  Resposta(this.textoResposta);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(textoResposta),
    );
  }
}
