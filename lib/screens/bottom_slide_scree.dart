import 'package:flutter/material.dart';

class BottomSlideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.close), onPressed: () {
            Navigator.of(context).pop();
          },)
        ],
      ),
      body: Container(
        color: Colors.amberAccent,
      ),
    );
  }
}
