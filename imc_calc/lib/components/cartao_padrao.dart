import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CartaoPadrao({required this.cor,required this.filhoCartao});

  final Color cor;
  final Widget filhoCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: filhoCartao,
    );
  }
}
