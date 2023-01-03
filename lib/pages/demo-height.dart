import 'package:flutter/material.dart';
import 'package:hello_world/constantes.dart';

const loremLipsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae ipsum et lacus scelerisque gravida ut ut elit. Curabitur odio turpis, ultricies vel sem non";

class ItemMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Bloc qui aligne 2 elements verticalement
    return Expanded(
        child: Flex(
      direction: Axis.vertical,
      children: const [
        // Ligne Text 1
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Text(
              "Ligne 1",
              style: TextStyle(color: primaryColor),
            )),
        // Ligne Text 2
        Expanded(child: Text(loremLipsum))
      ],
    ));
  }
}

class MyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        // Espacement sur 20 unités
        child: Padding(
            padding: const EdgeInsets.all(20),
            // Alignement 2 elements horizontalement
            child: Flex(
              direction: Axis.horizontal,
              children: [
                // Image a gauche
                Image.asset(
                  "images/test.jpg",
                  width: 125,
                ),
                // Le bloc des textes à droite
                ItemMessage()
              ],
            )));
  }
}

class DemoHeightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Page'),
        ),
        body: MyItem());
  }
}
