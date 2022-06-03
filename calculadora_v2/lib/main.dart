import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF616161),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Calculadora",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: calculadora(),
      ),
    ),
  );
}

class calculadora extends StatefulWidget {
  @override
  State<calculadora> createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
  String vis = 'visor';

  void mudaVis (par){
   setState((){
     vis = par;
   },);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              color: Colors.white,
              width: double.infinity,
              height: 120,
              child: Center(
                child: Text(
                  vis,
                  style: TextStyle(
                    fontSize: 50,
                    color: Color(0xFF616161),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('clear');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " C ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('delete');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          "DEL",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('porcentagem');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " % ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('barra');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " / ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 7');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 7 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 8');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 8 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 9');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 9 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('asterísco');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " * ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 4');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 4 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 5');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 5 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 6');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 6 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('mais');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " + ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 1');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 1 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 2');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 2 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mudaVis('número 3');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " 3 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {mudaVis('barra');},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          " / ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {mudaVis('número 0');},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          "  0  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {mudaVis('ponto');},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          "  .  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {mudaVis('resultado');},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF616161)),
                        ),
                        child: Text(
                          "  =  ",
                          style: TextStyle(
                            color: Color(0xFF536DFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
