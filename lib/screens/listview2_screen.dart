import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Zelda', 'Mario', 'Donkey Kong', 'Samus', 'Pikachu'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.person),
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_right_outlined,
            color: Colors.indigo,
          ),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
