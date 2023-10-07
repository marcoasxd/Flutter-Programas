
// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, unnecessary_new
// Atributos nomeáveis: "home, color" (normalmente começa com letra minúscula). Atributos nomeáveis recebem um Widget
// Parâmetro posicional: Text('Teste'). (normalmente começa com letra maiúscula)

import 'package:flutter/material.dart'; // import obrigatório

main() {
  runApp(new CodBase());

}

class CodBase extends StatelessWidget { // Preciso implementar um método e esse método irá retornar um Widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Teste!'),
    );
  }
  
}