import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc_calc/telas/tela_resultados.dart';
import '../components/conteudo_icone.dart';
import '../components/cartao_padrao.dart';
import '../constantes.dart';
import '../components/botao_inferior.dart';
import '../components/botao_arredondado.dart';
import 'package:imc_calc/calculadora.dart';

enum SexoPessoa {
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  SexoPessoa? sexoSelecionado;
  int altura = 170;
  int peso = 60;
  int idade = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("CALCULADORA IMC")),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          sexoSelecionado = SexoPessoa.masculino;
                        });
                      },
                      child: CartaoPadrao(
                        cor: sexoSelecionado == SexoPessoa.masculino
                            ? kCorPadraoCartao
                            : kCorInativaCartao,
                        filhoCartao: ConteudoIcone(
                            icone: FontAwesomeIcons.mars,
                            descricao: "MASCULINO"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          sexoSelecionado = SexoPessoa.feminino;
                        });
                      },
                      child: CartaoPadrao(
                          cor: sexoSelecionado == SexoPessoa.feminino
                              ? kCorPadraoCartao
                              : kCorInativaCartao,
                          filhoCartao: ConteudoIcone(
                            icone: FontAwesomeIcons.venus,
                            descricao: "FEMININO",
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CartaoPadrao(
                      cor: kCorPadraoCartao,
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'ALTURA',
                            style: kDescrText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                altura.toString(),
                                style: kDescrNmr,
                              ),
                              const Text(
                                'cm',
                                style: kDescrText,
                              ),
                            ],
                          ),
                          Slider(
                            value: altura.toDouble(),
                            onChanged: (double novoValor) {
                              setState(() {
                                altura = novoValor.round();
                              });
                            },
                            min: 120,
                            max: 220,
                            activeColor: kCorContainerInferior,
                            inactiveColor: kCorInativaCartao,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CartaoPadrao(
                      cor: kCorPadraoCartao,
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'PESO',
                            style: kDescrText,
                          ),
                          Text(
                            peso.toString(),
                            style: kDescrNmr,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BotaoArredondado(
                                icone: FontAwesomeIcons.minus,
                                aoPressionar: () {
                                  setState(() {
                                    if (peso > 30)
                                    {peso--;}

                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              BotaoArredondado(
                                icone: FontAwesomeIcons.plus,
                                aoPressionar: () {
                                  setState(() {
                                    if (peso < 200){
                                      peso++;}
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CartaoPadrao(
                      cor: kCorPadraoCartao,
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'IDADE',
                            style: kDescrText,
                          ),
                          Text(
                            idade.toString(),
                            style: kDescrNmr,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BotaoArredondado(
                                icone: FontAwesomeIcons.minus,
                                aoPressionar: () {
                                  setState(() {
                                    if (idade > 1){idade--;}

                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              BotaoArredondado(
                                icone: FontAwesomeIcons.plus,
                                aoPressionar: () {
                                  setState(() {
                                    if (idade < 110){idade++;}
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //padding: EdgeInsets.only(bottom: 20,),
              height: kAlturaContainer,
              color: kCorContainerInferior,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              child: BotaoInferior(titleButton: 'CALCULAR', func: (){
                Calculadora calc = Calculadora(altura: altura, peso: peso);
                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaResultados(imc: calc.calcularIMC(), interpretacao: calc.obterInterpretacao(), reultado: calc.obterResultado()),),);
              }),
            ),
          ],
        ));
  }
}


