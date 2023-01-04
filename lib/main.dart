import 'package:flutter/material.dart';
import 'package:hello_world/pages/demo-animation.dart';
import 'package:hello_world/pages/demo-archi.dart';
import 'package:hello_world/pages/demo-form.dart';
import 'package:hello_world/pages/demo-height.dart';
import 'package:hello_world/pages/demo-page.dart';
import 'package:hello_world/pages/home-page.dart';
import 'package:hello_world/route-config.dart';

void main() {
  runApp(const MyApplication());
}

// Application
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DemoFormPage(),
      routes: {"/second": (context) => const SecondPage()},
    );
  }
}
