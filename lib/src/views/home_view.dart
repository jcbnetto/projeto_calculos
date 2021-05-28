import 'package:projeto_calculos/src/views/components/drawer.dart';
import 'package:projeto_calculos/src/views/components/espacamento_h.dart';
import 'package:projeto_calculos/src/views/components/logo.dart';
import 'package:projeto_calculos/src/views/components/titulo2.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Inicio do drawer:
        drawer: DrawerInicio(),
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(),
                  // Container de espaçamento:
                  EspacamentoH(
                    h: 20,
                  ),
                  // Nomes que aparecem na entrada do aplicativo:
                  Titulo2(
                    txt: 'Calculadora',
                  ),
                  EspacamentoH(
                    h: 10,
                  ),
                  Text(
                      'Bem-vindo(a) a calculadora! Abra o drawer e escolha a calculadora que deseja abrir!')
                ],
              ),
            ),
          ),
        ));
  }
}
