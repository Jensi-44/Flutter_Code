import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              text: 'JENSI',
              style: TextStyle(fontSize: 30),
              children: [
                TextSpan(
                    text: 'KACHHADIYA',
                    style: TextStyle(color: Colors.blue, fontSize: 30))
              ]),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textDirection: TextDirection.ltr,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Moblie',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange,
                ),
              ),
              Icon(
                Icons.mobile_screen_share,
                size: 70,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Tablet',
                style: TextStyle(fontSize: 40, color: Colors.green),
              ),
              Icon(
                Icons.tablet_android,
                size: 70,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Laptop',
                style: TextStyle(fontSize: 40, color: Colors.lightBlue),
              ),
              Icon(
                Icons.laptop_chromebook,
                size: 70,
              )
            ],
          ),
        ],
      ),
    ),
  ));
}
