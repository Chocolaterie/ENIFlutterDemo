import 'package:flutter/material.dart';

class DemoAnimPage extends StatefulWidget {
  const DemoAnimPage({super.key});

  @override
  State<DemoAnimPage> createState() => new _DemoAnimPageState();
}

class _DemoAnimPageState extends State<DemoAnimPage> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  void iClickOnButton(String test) {
    print("Coucou");

    setState(() {
      _crossFadeState = CrossFadeState.showSecond;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Page'),
        ),
        body: Flex(direction: Axis.vertical, children: [
          AnimatedCrossFade(
              duration: const Duration(seconds: 1),
              firstChild: const Text(
                "Element 1",
                style: TextStyle(fontSize: 44),
              ),
              secondChild: const Text(
                "Element 2",
                style: TextStyle(fontSize: 44),
              ),
              crossFadeState: _crossFadeState),
          ElevatedButton(
              onPressed: () {
                iClickOnButton("Test");
              },
              child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
                  child: Text(
                    "Mon Button",
                    style: TextStyle(fontSize: 30),
                  ))),
        ]));
  }
}
