import 'package:flutter/material.dart';

class MyStandardWidgets extends StatelessWidget {
  const MyStandardWidgets({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout Demo"),
        ),
        body: Center(child: _buildImageColumn()),
      ),
    );
  }

  Widget _buildImageColumn()
  {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3),
        ],
      )
    );
  }

  Widget _buildImageRow(int index) => Expanded(
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      _buildDecoratedImage(index),
      _buildDecoratedImage(index + 1)
    ],
    )
    );

  Widget _buildDecoratedImage(int index) => Expanded(
    child: Container(
      child: Image.asset("assets/dogs/dog$index.jpg", width: 300, height: 300),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8))
      ),
    )
  );
}
