import 'package:flutter/material.dart';
import 'package:imc_calc/telas/tela_principal.dart';
import 'constantes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: kAppBarTheme,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Color(0xFFFD5722)),
        scaffoldBackgroundColor: kCorScaffBack,
        textTheme:  const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TelaPrincipal(),
      },
    );
  }
}



