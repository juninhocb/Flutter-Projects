import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text("Eu sou rico"),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('imagens/imagem.jpg'),
          ),
        ),
      ),
    ),
  );
}