// Une page de l'application
import 'package:flutter/material.dart';
import 'package:hello_world/model/article.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(children: [
        const Text(
          "Hello World",
          style: TextStyle(fontSize: 45),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/second");
            },
            child: const Text("Clique"))
      ]),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: Column(children: [
        Text(
          "Hello World 5",
          style: TextStyle(fontSize: 45),
        ),
        Text("Blabla", style: TextStyle(fontSize: 45))
      ]),
    );
  }
}
