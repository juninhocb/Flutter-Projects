import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF616161),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
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

  List<bool> listaNmr= [false, false, false, false, false, false, false, false, false, false];
  List<bool> operadores = [false, false, false, false, false];
  // operadores ->    1 = Divisão, 2 = Porcentagem, 3= Vezes, 4 = Mais, 5 = Menos
  List<String> tela = [];
  List<String> calc = [];
  List<String> var1 = [];
  List<String> var2 = [];
  List<String> opera = [];
  double nmr1 = 0;
  double nmr2 = 0;
  String conc1 = "";
  String conc2 = "";
  double resultado = 0;
  String operador = "";
  double aux = 0;

  void zeraVars(){
    nmr1 = 0;
    nmr2 = 0;
    conc1 = "";
    conc2 = "";
    resultado = 0;
    operador = "";
    calc = [];
    operadores = [false, false, false, false, false];
    tela = [];
    calc = [];
    var1 = [];
    var2 = [];
    opera = [];
  }

  void mudaVis (par){
    int contador = 1;
    setState((){
     if (par == "="){
       contador = 0;
       tela = [];
       aux = calcular();
       if (aux == 198526325.33){vis = "Dados Inválidos"; }else{
         vis = aux.toString();
       }
       zeraVars();
     }else if (par == "c"){
       vis = "";
       zeraVars();
     }else if (par == "del"){
       vis = "";

       if(operadores != [false,false,false,false,false] && (tela.last == "+" || tela.last == "-" || tela.last == "/" || tela.last == "*" || tela.last == "%")){
         operadores = [false,false,false,false,false];
       }
       tela.removeLast();
       for (int i = 0; i < tela.length; i++){vis = vis + tela[i];}
     }
     else
     { tela.add(par);
       vis = "";
     for (int i = contador - 1; i < tela.length; i++){
       vis = vis + tela[i];
     }
     contador ++;
     calc = tela;
   }},);
  }

  double  calcular(){

    for (int i = 0; i < operadores.length; i ++){
      if (operadores[i] == true){
        if (i == 0){
          opera.add("/");
        }else if (i == 1){opera.add("%");}
        else if(i == 2){opera.add("*");}
        else if (i ==3){opera.add("+");}
        else if (i == 4){opera.add("-");}
      }
      }
    bool key = false;
    for (int i = 0; i < calc.length; i++){
      if (calc[i] == "/" || calc[i] == "*" || calc[i] == "+" || calc[i] == "-" || calc[i] == "%"){
        int j = i + 1;
        key = true;
        for( j ; j < calc.length; j++){
          var2.add(calc[j]);
        }
      }else {
        if (key == true){}else {var1.add(calc[i]);}
      }}
    for (int i = 0; i < var1.length; i++){
      conc1 = conc1 + var1[i];
    }


    if (conc1.toString() == ""){nmr1 = 198526325.33; }else {
      nmr1 = double.parse(conc1);}

    for (int i = 0; i < var2.length; i++){
      conc2 = conc2 + var2[i];
    }

    if (conc2.toString() == ""){nmr2 = 198526325.33; }else {
      nmr2 = double.parse(conc2);}

    if (opera.toString() == '[]'){nmr1 = 198526325.33;} else {operador = opera[0];}

    switch(operador) {

      case "/":
        resultado = nmr1/nmr2;
        break;
      case "%":
        resultado = ((nmr1/nmr2)/nmr1)*100;
        break;
      case "*":
        resultado = nmr1*nmr2;
        break;
      case "+":
        resultado = nmr1+nmr2;
        break;
      case "-":
        resultado = nmr1-nmr2;
        break;
      case "":
        resultado = 198526325.33;
        break;
    }

    if (var1.toString() == '[]' || var2.toString() == '[]'){resultado = 198526325.33;}

    return resultado;

    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              color: Colors.white,
              width: double.infinity,
              height: 120,
              child: Center(
                child: Text(
                  vis,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Color(0xFF616161),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
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
                          mudaVis('c');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('del');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          operadores[1] = true;
                          mudaVis('%');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          operadores[0] = true;
                          mudaVis('/');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('7');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const  Text(
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
                          mudaVis('8');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('9');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          operadores[2] = true;
                          mudaVis('*');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('4');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('5');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('6');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          operadores[3] = true;
                          mudaVis('+');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('1');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('2');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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
                          mudaVis('3');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
                          " 3 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          operadores[4] = true;
                          mudaVis('-');},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
                          " - ",
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
                        onPressed: () {mudaVis('0');},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
                          "  0  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {mudaVis('.');},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
                          "  .  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {mudaVis('=');},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF616161)),
                        ),
                        child: const Text(
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




