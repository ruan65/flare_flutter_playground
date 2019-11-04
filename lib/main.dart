import 'package:flare_playground/screens/bottom_slide_scree.dart';
import 'package:flare_playground/screens/robot_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Robot'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RobotScreen()));
              },
            ),
            RaisedButton(
              child: Text('Bottom Slide Screen'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomSlideScreen()));
              },
            ),
            RaisedButton(
              child: Text('from bottom'),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        BottomSlideScreen(),
    transitionDuration: Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
