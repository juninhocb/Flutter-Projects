import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade600,
          title: const Center(
            child: Text(
              textAlign: TextAlign.center,
              "Dadoos",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: dadoos(),
      ),
    ),
  );
}

class dadoos extends StatefulWidget {
  @override
  State<dadoos> createState() => _dadoosState();
}

class _dadoosState extends State<dadoos> {
  int dadoEsquerdo = 1;
  int dadoDireito = 1;

  void geraNmr() {
    setState(
      () {
        dadoEsquerdo = Random().nextInt(6) + 1;
        dadoDireito = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Pressione sobre o dado para mudar os valores',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      geraNmr();
                    },
                    child: Image.asset("images/dado$dadoEsquerdo.png")),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      geraNmr();
                    },
                    child: Image.asset("images/dado$dadoDireito.png")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
