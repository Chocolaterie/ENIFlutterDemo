import 'package:flutter/material.dart';

const textWidget1 = Expanded(
    child: Text(
  "Demo 1",
  textAlign: TextAlign.center,
  style:
      TextStyle(fontSize: 33, backgroundColor: Color.fromARGB(255, 255, 0, 0)),
));

const textWidget2 = Expanded(
    child: Align(
        alignment: Alignment.center,
        child: Text(
          "Demo 2",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 33, backgroundColor: Color.fromARGB(255, 0, 0, 255)),
        )));

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  void iClickOnButton(String test) {
    print("Coucou");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Page'),
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            textWidget1,
            textWidget2,
            // Button
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
            // Image
            Image.asset("images/test.jpg"),
          ],
        ));
  }
}
