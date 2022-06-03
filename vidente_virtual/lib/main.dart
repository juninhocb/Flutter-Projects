import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown.shade700,
        appBar: AppBar(
          backgroundColor: Colors.brown.shade900,
          toolbarHeight: 50,
          title: const Text(
            "Vidente Virtual",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        body: const Vidente(),
      ),
    ),
  );
}

class Vidente extends StatefulWidget {
  const Vidente({Key? key}) : super(key: key);
  @override
  State<Vidente> createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int nmr = 1;
  void substImg() {
    setState((){
      nmr = Random().nextInt(5) + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          substImg();
        },
        child: Image.asset('images/vidente$nmr.png'),
      ),
    );
  }
}
