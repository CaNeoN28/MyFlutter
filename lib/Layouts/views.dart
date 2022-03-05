import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyViews extends StatelessWidget {
  const MyViews({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyListView",
      home: Scaffold(
        //body: _myExtentGridView(),
        //body: _myCountGridView(),
        body: _myListView(),
      ),
    );
  }

  Widget _myExtentGridView() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridViewTileList(30),
    );

  Widget _myCountGridView() => GridView.count(
    crossAxisCount: 4,
    crossAxisSpacing: 6,
    mainAxisSpacing: 6,
    padding: const EdgeInsets.all(4),
    children: _buildGridViewTileList(30),
  );

  List<Container> _buildGridViewTileList(int count) => List.generate(count, (i) => Container(
    child: Image.asset("assets/animeg/ansfw ($i).jpeg",),
    )
  );

  Widget _myListView() => ListView(
    children: _generateWordTile(30),
  );

  List<ListTile> _generateWordTile(int count) => List.generate(
    count, (i) => ListTile(
      title: Text(WordPair.random().asPascalCase.toString()),
      leading: Icon(
        Icons.book,
        color: Colors.blue[900],
      ),
    )
  );
}

