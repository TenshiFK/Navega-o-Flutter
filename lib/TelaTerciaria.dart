import 'package:flutter/material.dart';
import 'package:navegacao/TelaQuaternaria.dart';

class TelaTerciaria extends StatefulWidget {
  @override
  _TelaTerciariaState createState() => _TelaTerciariaState();
}

class _TelaTerciariaState extends State<TelaTerciaria> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tela Terciária",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 93, 33, 243),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Terceira tela!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24), // Pequeno espaço após o título
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(50.0),
                      child: AnimatedSlide(
                        offset: offset,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: const Icon(
                          Icons.wb_cloudy,
                          size: 60.0,
                          color: Color.fromARGB(255, 93, 33, 243),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text('Y', style: textTheme.bodyMedium),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Slider(
                            min: -5.0,
                            max: 5.0,
                            value: offset.dy,
                            onChanged: (double value) {
                              setState(() {
                                offset = Offset(offset.dx, value);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('X', style: textTheme.bodyMedium),
                Expanded(
                  child: Slider(
                    min: -5.0,
                    max: 5.0,
                    value: offset.dx,
                    onChanged: (double value) {
                      setState(() {
                        offset = Offset(value, offset.dy);
                      });
                    },
                  ),
                ),
                const SizedBox(width: 48.0),
              ],
            ),
            const SizedBox(height: 24), // Espaçamento antes do botão
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuaternaria()),
                );
              },
              child: Text("Ir para quarta tela"),
            ),
          ],
        ),
      ),
    );
  }
}
