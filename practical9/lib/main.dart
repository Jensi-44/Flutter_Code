import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Gallary"),
      ),
      body: GridView.count(
          crossAxisCount: 8,
          children: List.generate(32, (index) {
            return Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent, width: 4)),
              child: Center(
                child: Text(
                  'photo $index',
                ),
              ),
            );
          })),
    ),
  ));
}
