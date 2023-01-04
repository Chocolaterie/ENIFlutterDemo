import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter-provider.dart';
import 'package:provider/provider.dart';

class InfoProviderPage extends StatelessWidget {
  const InfoProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
        builder: (context, counterProvider, child) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Demo Page'),
          ),
          body: Center(child: Text('${counterProvider.counter}')));
    });
  }
}
