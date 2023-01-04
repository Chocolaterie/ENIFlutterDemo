import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter-provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Page'),
        ),
        body: Consumer<CounterProvider>(
            builder: (context, counterProvider, child) {
          return Center(
            child: Flex(
              direction: Axis.vertical,
              children: [
                Text(
                  '${counterProvider.counter}',
                  style: TextStyle(fontSize: 40),
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<CounterProvider>(context, listen: false)
                          .increment();
                    },
                    child: const Text("Incrementer")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "info-provider");
                    },
                    child: const Text("Ouvrir une autre page"))
              ],
            ),
          );
        }));
  }
}
