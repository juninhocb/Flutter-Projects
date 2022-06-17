import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoInferior extends StatelessWidget {
  const BotaoInferior({Key? key,required this.titleButton, required this.func}) : super(key: key);

  final String titleButton;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        func();
      },
      child: Text(
        titleButton,
        style: kDescrBtnInf,
        textAlign: TextAlign.center,
      ),
    );
  }
}