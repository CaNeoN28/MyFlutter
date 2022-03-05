import 'dart:math';

import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter Stack",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Flutter Stack"),
        ),
        body: _generateImageStack(),
        ),
    );
  }
  Widget _generateImageStack() => Container
  (
    padding: const EdgeInsets.all(20),
    height: 300,
    child: Stack(
      alignment: const Alignment(0, 0),
      children: [
        CircleAvatar(
          child: ClipOval(
            child: Image.asset('assets/dogs/dog1.jpg')
          ),
          radius: 100
        ),
        Container(
          alignment: Alignment.bottomRight,
          child : Text(Random().nextInt(100).toString(), style: const TextStyle(
            fontSize: 24,
            ),
          ),
        )
      ],
    )
  );
}