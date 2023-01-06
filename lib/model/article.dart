import 'package:flutter/cupertino.dart';

class Article {
  int id;
  String title;
  String body;

  Article({this.id = -1, this.title = "???", this.body = ""});

  // Utilitaire
  static Article fromJson(Map<String, dynamic> json) {
    return Article(id: 0, title: json['title'], body: json['body']);
  }
}
