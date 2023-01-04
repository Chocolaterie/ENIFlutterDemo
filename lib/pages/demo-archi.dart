import 'package:flutter/material.dart';

class DemoArchiPage extends StatelessWidget {
  const DemoArchiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Page'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          const Text("Texte normal"),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Texte normal"),
          ),
          Flex(
            direction: Axis.horizontal,
            children: const [
              Text("Texte colonne 1"),
              Text("Texte colonne 2"),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: const [
              Expanded(child: Text("Texte colonne 1")),
              Expanded(child: Text("Texte colonne 2")),
            ],
          )
        ],
      ),
    );
  }
}
