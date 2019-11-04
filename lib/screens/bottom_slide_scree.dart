import 'package:flutter/material.dart';

class BottomSlideScreen extends StatefulWidget {
  @override
  _BottomSlideScreenState createState() => _BottomSlideScreenState();
}

class _BottomSlideScreenState extends State<BottomSlideScreen> {
  ScrollController _controller = ScrollController();
  bool poped = false;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      if (_controller.offset < -50 && !poped) {
        poped = true;
        Navigator.of(context).pop();
      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: List<Widget>.generate(
              30,
              (i) => ListTile(
                    title: Text('item $i'),
                  )),
        ),
      ),
    );
  }
}
