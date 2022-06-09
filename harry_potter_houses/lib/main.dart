import 'package:flutter/material.dart';
import 'helper.dart';

Helper hp = Helper();

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: HarryAPP(),
      ),
    );
  }
}

class HarryAPP extends StatefulWidget {
  const HarryAPP({Key? key}) : super(key: key);

  @override
  State<HarryAPP> createState() => _HarryAPPState();
}

class _HarryAPPState extends State<HarryAPP> {
  void nextQuest(par) {
    setState(() {
      bool verify = hp.isFinal();
      if (verify){
        hp.testRestart();
      } else {
        hp.changeQuest(par);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/harrypotter.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Text(
                    hp.listAcessText(),
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () { nextQuest('fst');},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightGreen.shade800),
                  child: Text(
                    hp.listAcessOp1(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Visibility(
                  visible: hp.isVisible(),
                  child: TextButton(
                    onPressed: () { nextQuest('scd');},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purple.shade700),
                    child: Text(
                      hp.listAcessOp2(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
