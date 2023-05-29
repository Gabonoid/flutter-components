import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Zelda', 'Mario', 'Donkey Kong', 'Samus', 'Pikachu'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((charGame) => ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: Text(charGame),
                    trailing: const Icon(Icons.arrow_right),
                  ))
              .toList(),
          const Divider(),
        ],
      ),
    );
  }
}
