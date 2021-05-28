import 'package:flutter/material.dart';

class DrawerInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          // Mostra o texto escrito:
          child: Text(
            'Menu de Opções',
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              // Mostra a imagem do icone de fundo:
                image: AssetImage('assets/images/bg_drawer.jpg'),
                fit: BoxFit.cover),
            color: Colors.pink,
          ),
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Soma'),
          subtitle: Text('Some valores aqui!'),
          onTap: () {
            Navigator.pushNamed(context, '/soma');
          },
        ),
        ListTile(
          leading: Icon(Icons.call_split),
          title: Text('Divisão'),
          subtitle: Text('Divida valores aqui!'),
          onTap: () {
            Navigator.pushNamed(context, '/divisao');
          },
        )
      ],
    ));
  }
}
