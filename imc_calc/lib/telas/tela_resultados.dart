import 'package:flutter/material.dart';
import 'package:imc_calc/components/botao_inferior.dart';
import '../constantes.dart';
import '../components/cartao_padrao.dart';
import '../components/botao_inferior.dart';


class TelaResultados extends StatelessWidget {
   TelaResultados({Key? key,required this.imc, required this.interpretacao, required this.reultado}) : super(key: key);

  String imc;
  String reultado;
  String interpretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('CALCULADORA IMC', ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
              'Resultado',
              style: kResultStyle,
            ),
                )),
            Expanded(
              flex: 5,
              child: CartaoPadrao(
                cor: kCorPadraoCartao,
                filhoCartao: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      reultado.toUpperCase(),
                      style: kTitleResult,
                      textAlign: TextAlign.center,
                    ),
                    Text(imc, style: kIMCResult,),
                    Text(interpretacao, style: kMSGResult, textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
            Container(
              color: kCorContainerInferior,
              height: kAlturaContainer,
              child: BotaoInferior(titleButton: 'RECALCULAR', func: (){Navigator.pop(context); },),
            ),
          ],
        ));
  }
}
