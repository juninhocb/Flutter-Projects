import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text("Eu sou programador"),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/programador.png'),
          ),
        ),
      ),
    ),
  );
}
