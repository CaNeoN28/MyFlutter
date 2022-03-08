import 'package:flutter/material.dart';

class myCardAndTile extends StatelessWidget {
  const myCardAndTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Card and Tile",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Card and Tile"),
        ),
        body: _myCard(),
      )
    );
  }

  Widget _myCard() => SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.school),
            title: Text("Instituto Federal de Rondônia"),
            subtitle: Text("Campus Vilhena"),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text("Instituto Federal do Mato Grosso"),
            subtitle: Text("IFMG"),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text("Instituto Federal do Amapá")
          )
        ],
      ),
    )
  );
}