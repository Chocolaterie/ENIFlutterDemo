import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/model/article.dart';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:convert';

class DemoArticlePage extends StatefulWidget {
  const DemoArticlePage({super.key});

  @override
  State<StatefulWidget> createState() => _DemoArticlePageState();
}

class _DemoArticlePageState extends State<StatefulWidget> {
  Article? _article = Article();

  Future<void> callApi() async {
    var random = Random();
    int idGet = random.nextInt(10);

    // j'appel l'api et je stocke la réponse de l'api
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/$idGet"));

    // Réponse correcte
    if (response.statusCode == 200) {
      // Donnée json
      const JsonDecoder decoder = JsonDecoder();
      final Map<String, dynamic> json = decoder.convert(response.body);

      // En article
      setState(() {
        _article = Article.fromJson(json);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo API'),
        ),
        body: Center(
            child: Flex(
          direction: Axis.vertical,
          children: [
            Text(_article!.title),
            ElevatedButton(
                onPressed: () {
                  // Appeler l'api
                  callApi();
                },
                child: Text("Appel web service"))
          ],
        )));
  }
}
