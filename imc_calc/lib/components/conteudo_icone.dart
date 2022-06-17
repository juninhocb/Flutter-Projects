import 'package:flutter/material.dart';
import '../constantes.dart';

class ConteudoIcone extends StatelessWidget {
  ConteudoIcone ({required this.icone, required this.descricao});

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, color: Colors.white, size: 60,),
        const SizedBox(height: 10,),
        Text(descricao, style: kDescrText, ),
      ],
    );
  }
}
