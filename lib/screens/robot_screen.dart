import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class RobotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 50,
        child: FlareActor("animations/dotrot.flr",
            color: Colors.red,
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "Loading"),
      ),
    );
  }
}
