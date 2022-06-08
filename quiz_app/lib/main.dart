import 'package:flutter/material.dart';
import 'helper.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


Helper hp = Helper();

void main() => runApp(const QuizAPP());

class QuizAPP extends StatelessWidget {
  const QuizAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Inicio(),
      ),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  List<Icon> acertosErros = [];

  conferirResposta(bool conf) {
    bool verificar = hp.buscaResp();
    setState ((){
      if (hp.conferirfimQuiz() == true){
        Alert(
          context: context,
          type: AlertType.info,
          title: "Fim do jogo!!!",
          desc: "Você respondeu as perguntas e o jogo será reiniciado.",
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pop(context),
              width: 120,
              child: const Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ).show();

        acertosErros = [];
        hp.resetarQuiz();
      }else{
        if (verificar == conf) {
          acertosErros.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          acertosErros.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }

        hp.proxPergunta();
      }


    });
  }

  Expanded mostrarPergunta() {
    return Expanded(
      flex: 6,
      child: Center(
        child: Text(
          hp.buscaBanco(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            mostrarPergunta(),
            Expanded(
              child: TextButton(
                onPressed: (() {
                  conferirResposta(true);
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent),
                child: const Text(
                  "Verdadeiro",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: TextButton(
                onPressed: (() {
                  conferirResposta(false);
                }),
                style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                child: const Text(
                  "Falso",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20, child: Row(children: acertosErros),),
          ],
        ),
      ),
    );
  }
}
