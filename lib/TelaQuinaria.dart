import 'package:flutter/material.dart';

class TelaQuinaria extends StatefulWidget {
  @override
  _TelaQuinariaState createState() => _TelaQuinariaState();
}

class _TelaQuinariaState extends State<TelaQuinaria> {
  final List<String> _items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tela Quinária",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 106, 27),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Quinta tela!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              "Arraste os itens para excluílos!",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16), // Espaçamento após o título
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return Dismissible(
                    key: Key(item),
                    onDismissed: (direction) {
                      setState(() {
                        _items.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('$item removido')),
                      );
                    },
                    background: Container(color: Colors.red),
                    child: ListTile(
                      title: Text(item),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
