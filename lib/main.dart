import 'package:flutter/material.dart';
import 'package:hello_world/pages/counter-page.dart';
import 'package:hello_world/pages/demo-animation.dart';
import 'package:hello_world/pages/demo-archi.dart';
import 'package:hello_world/pages/demo-form-validator.dart';
import 'package:hello_world/pages/demo-form.dart';
import 'package:hello_world/pages/demo-height.dart';
import 'package:hello_world/pages/demo-page.dart';
import 'package:hello_world/pages/home-page.dart';
import 'package:hello_world/pages/info-counter-page.dart';
import 'package:hello_world/provider/counter-provider.dart';
import 'package:hello_world/route-config.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApplication());
}

// Application
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => CounterProvider(counter: 1)),
      child: MaterialApp(
        home: DemoFormValidatorPage(),
        routes: {
          "/second": (context) => const SecondPage(),
          "info-provider": (context) => const CounterPage()
        },
      ),
    );
  }
}
