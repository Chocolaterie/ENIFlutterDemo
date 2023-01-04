import 'package:flutter/material.dart';

class DemoFormPage extends StatelessWidget {
  const DemoFormPage({super.key});

  void iClickOnButton(String test) {
    print("Coucou");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Flex(
            direction: Axis.vertical,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text("Titre"),
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: "Email", hintText: "example@gmail.com"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Mot de passe"),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Mon Bouton",
                            style: TextStyle(fontSize: 22),
                          ),
                        ))),
              ),
              IconButton(onPressed: () {}, icon: Image.asset("images/test.jpg"))
            ],
          ),
        ));
  }
}
