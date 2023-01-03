import 'package:flutter/material.dart';
import 'package:hello_world/pages/home-page.dart';

class RouteConfig {
  static Map<String, Widget Function(BuildContext)> getConfig(
      BuildContext context) {
    return {"/second": (context) => SecondPage()};
  }
}
