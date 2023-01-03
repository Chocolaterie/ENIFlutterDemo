import 'package:flutter/material.dart';
import 'package:hello_world/pages/demo-animation.dart';
import 'package:hello_world/pages/demo-height.dart';
import 'package:hello_world/pages/demo-page.dart';
import 'package:hello_world/pages/home-page.dart';
import 'package:hello_world/route-config.dart';

void main() {
  runApp(const ChocolatineApp());
}

// Application
class ChocolatineApp extends StatelessWidget {
  const ChocolatineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoHeightPage(),
      routes: {"/second": (context) => const SecondPage()},
    );
  }
}
