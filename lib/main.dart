import 'package:projeto_calculos/src/views/soma_view.dart';
import 'package:projeto_calculos/src/views/divisao_view.dart';
import 'package:projeto_calculos/src/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo de Calculos',
      // Rota Inicial:
      initialRoute: '/',
      // Rotas do projeto:
      routes: {
        '/': (context) => HomeView(),
        '/soma': (context) => Soma(),
        '/divisao': (context) => Divisao(),
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
