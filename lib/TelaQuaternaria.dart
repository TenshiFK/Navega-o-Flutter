import 'package:flutter/material.dart';
import 'package:navegacao/TelaQuinaria.dart';

class TelaQuaternaria extends StatefulWidget {
  @override
  _TelaQuaternariaState createState() => _TelaQuaternariaState();
}

class _TelaQuaternariaState extends State<TelaQuaternaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Quarternária"),
        backgroundColor: const Color.fromARGB(255, 243, 191, 33),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Quarta tela!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Center(
              child: Volume(),
            ),
            const SizedBox(
              height: 100,
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

double _volume = 0.0;

class Volume extends StatefulWidget {
  const Volume({super.key});

  @override
  State<Volume> createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                Icons.volume_up,
                color: Color.fromARGB(255, 243, 191, 33),
              ),
              iconSize: 60,
              tooltip: 'Aumentar o volume em 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.volume_down,
                color: Color.fromARGB(255, 243, 191, 33),
              ),
              iconSize: 60,
              tooltip: 'Diminuir o volume em 10',
              onPressed: () {
                setState(() {
                  _volume -= 10;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 24), // Adiciona espaço entre os ícones e o texto
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Volume : $_volume',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
