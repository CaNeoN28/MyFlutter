import 'package:flutter/material.dart';

class MyFullLayout extends StatelessWidget {
  const MyFullLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(  
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Instituto Federal de Rondônia",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                      ),
                    ),
                ),
                const Text(
                  "Campus Vilhena",
                  style: TextStyle(
                    color: Colors.black38
                  ),
                )
              ],
            ) 
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('72')
        ]
      ),
    );
    
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.phone, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ]
    );

    return MaterialApp(
      title: "My layout demo",
      home: Scaffold(
        body: Column(
          children: [
            Image.asset('assets/ifro.jpg'),
            titleSection,
            buttonSection
          ],
        )
      )
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) => Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w400
          ),
        ),
      )
    ],
  );
}