import 'package:projeto_calculos/src/controller/soma_controller.dart';
import 'package:projeto_calculos/src/views/components/espacamento_h.dart';
import 'package:projeto_calculos/src/views/components/espacamento_w.dart';
import 'package:projeto_calculos/src/views/components/titulo2.dart';
import 'package:flutter/material.dart';

class Soma extends StatefulWidget {
  @override
  _SomaState createState() => _SomaState();
}

class _SomaState extends State<Soma> {
  // Insatanciar o controller:
  SomaController _controller = SomaController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soma'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                EspacamentoH(h: 20),
                // Mostra a imagem do icone soma:
                Image.asset(
                  'assets/images/soma.png',
                  width: 200,
                  height: 200,
                ),
                // Container de espaçamento:
                EspacamentoH(h: 20),
                Titulo2(txt: "Soma:"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Mostra o texto valor 1:
                    Expanded(
                        flex: 1,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Valor 1:'),
                          onChanged: (value) {
                            _controller.valor1 = double.tryParse(value) ?? 0.0;
                          },
                        )),
                    // Container de espaçamento:
                    EspacamentoW(w: 10),
                    // Mostra o texto valor 2:
                    Expanded(
                      flex: 1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Valor 2:'),
                        onChanged: (value) {
                          _controller.valor2 = double.tryParse(value) ?? 0.0;
                        },
                      ),
                    ),
                  ],
                ),
                // Container de espaçamento:
                EspacamentoH(h: 20),
                // Mostra o botão somar:
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _controller.calcular();
                          });
                        },
                        child: Text("SOMAR"))),
                // Campo de resultado:
                TextField(
                  controller: _controller.resultado,
                  enabled: false,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelText: 'RESULTADO'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
