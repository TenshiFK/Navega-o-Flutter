import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';
import 'package:navegacao/TelaTerciaria.dart';
import 'package:navegacao/TelaQuaternaria.dart';
import 'package:navegacao/TelaQuinaria.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSecundaria()),
                );
              },
              child: Text("Ir para segunda tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaTerciaria()),
                );
              },
              child: Text("Ir para terceira tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuaternaria()),
                );
              },
              child: Text("Ir para quarta tela"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuinaria()),
                );
              },
              child: Text("Ir para quinta tela"),
            ),
          ],
        ),
      ),
    );
  }
}
