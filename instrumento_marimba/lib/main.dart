import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MainAPP());
}

class MainAPP extends StatelessWidget {
  const MainAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Marimba(),
      ),
    );
  }
}

class Marimba extends StatefulWidget {
  const Marimba({Key? key}) : super(key: key);

  @override
  State<Marimba> createState() => _MarimbaState();
}

class _MarimbaState extends State<Marimba> {
  void tocarSom(int nmrSom) {
    final player = AudioCache();
    player.play('nota$nmrSom.wav');
  }

  Expanded criaBotao(int nmr, {cor}){

    return  Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(nmr);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: const Text(''),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          criaBotao(1, cor: Colors.teal),
          criaBotao(2, cor: Colors.blue),
          criaBotao(3, cor: Colors.yellow),
          criaBotao(4, cor: Colors.red),
          criaBotao(5, cor: Colors.grey),
          criaBotao(6, cor: Colors.purple),
          criaBotao(1, cor: Colors.brown),
        ],
      ),
    );
  }
}
