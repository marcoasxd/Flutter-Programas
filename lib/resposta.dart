// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  // Defino quais parâmetros irei receber
  final String textoResposta;
  final void Function() quandoSelecionado;

  Resposta(this.textoResposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Colocando o double.infinity, vai esticar a largura do botão
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Define a cor de fundo
          foregroundColor: Colors.white, // Define a cor do texto
        ) ,
        onPressed: quandoSelecionado,
        child: Text(textoResposta),
      ),
    );
  }
}
