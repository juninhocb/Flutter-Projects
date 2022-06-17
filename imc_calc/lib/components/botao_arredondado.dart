import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({Key? key, required this.icone, required this.aoPressionar})
      : super(key: key);

  final IconData icone;
  final Function aoPressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        aoPressionar();
      },
      constraints: const BoxConstraints.tightFor(width: 45, height: 45),
      fillColor: kCorInativaCartao,
      elevation: 6,
      shape: const CircleBorder(),
      child: Icon(
        icone,
        color: Colors.white,
      ),
    );
  }
}
