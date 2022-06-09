import 'questions.dart';

class Helper {
  final List<Question> _listQuest = [
    Question(
        'Olá futuro bruxo(a)! Vamos descobrir qual é a casa ideal para você em Hogwarts? E a primeira questão é: com quais dos substantivos você se identifica mais?',
        'Coragem e gentileza',
        'Ambição e inteligência'),
    Question(
        'Você prefere quebrar as regras e conquistar algo de forma rápida ou prefere utilizar a inteligência e estudar para então conquistar?',
        'Prefiro quebrar as regras',
        'Utilizo a inteligência e estudos'),
    Question('O que se encaixa melhor com o seu perfil?', 'Ousadia e astúcia',
        'Paciência e sinceridade'),
    Question(
        'Você ficará muito bem aos cuidados da SONSERINA', 'Refazer teste', ''),
    Question('Você ficará muito bem aos cuidados da LUFA-LUFA!',
        'Refazer teste', ''),
    Question('Você ficará muito bem aos cuidados da GRIFINÓRIA!',
        'Refazer teste', ''),
    Question(
        'Você ficará muito bem aos cuidados da CORVINAL!', 'Refazer teste', '')
  ];

  int _qstNumber = 0;

  String listAcessText() {
    return _listQuest[_qstNumber].text;
  }

  String listAcessOp1() {
    return _listQuest[_qstNumber].option1;
  }

  String listAcessOp2() {
    return _listQuest[_qstNumber].option2;
  }

  void changeQuest(par) {
    if (par == 'fst' && _qstNumber == 0){
      _qstNumber = 2;
    } else if (par == 'scd' && _qstNumber == 0){
      _qstNumber = 1;
    } else if (par == 'fst' && _qstNumber == 1 ){
      _qstNumber = 3;
    } else if (par == 'scd' && _qstNumber == 1) {
      _qstNumber = 4;
    } else if (par == 'fst' && _qstNumber == 2){
      _qstNumber = 5;
    } else {
      _qstNumber = 6;
    }
  }

  bool isFinal (){
    bool test = false;
    if (_qstNumber == 3 || _qstNumber == 4 || _qstNumber == 5 || _qstNumber == 6){
      test = true;
    }
    return test;
  }

  bool isVisible (){
    bool test = false;
    if (_qstNumber == 0 || _qstNumber == 1 || _qstNumber == 2){
      test = true;
    }
    return test;
  }

  void testRestart (){
    _qstNumber = 0;
  }

}
