import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('I AM AMMAR'),
    ),
    body: Text(
      'Hello Ammar',
      style: TextStyle(
          fontSize: 50, color: Colors.pinkAccent, fontWeight: FontWeight.bold),
    ),
  )));
}
