import 'package:flutter/material.dart';
import 'package:hello_world/helper/eni-validator.dart';

class DemoFormValidatorPage extends StatefulWidget {
  DemoFormValidatorPage({super.key});

  @override
  State<StatefulWidget> createState() => _DemoFormPageState();
}

class _DemoFormPageState extends State<DemoFormValidatorPage> {
  final _formKey = GlobalKey<FormState>();

  late String _email;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Demo Page'),
            ),
            body: Form(
              key: _formKey,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  TextFormField(
                    validator: (value) => EniValidator.validateEmail(value!),
                    onSaved: (newValue) => _email,
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // Si le formulair est valide (contrôle de surface ok)
                        if (_formKey.currentState!.validate()) {
                          print("Contrôle OK");
                        }
                      },
                      child: Text("Submit"))
                ],
              ),
            )));
  }
}
