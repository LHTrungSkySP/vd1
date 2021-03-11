import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _rng = Random();
  double _height = 100;
  double _width = 100;
  double _borderRadius = 8;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello')
      ),
      body: Column(
        children: <Widget>[

          GestureDetector(
            child: AnimatedContainer(
              margin: const EdgeInsets.all(8),
              width:_width,
              height:_height,
              duration: const Duration(seconds: 0),
              curve: Curves.easeInOutQuint,
              child: Container(
                color: _color,
              )
            ),
            onTap: (){ setState(
                  () {
                _color = Color.fromARGB(_rng.nextInt(256),_rng.nextInt(256) ,_rng.nextInt(256), 10);
              },
            );}
          ),
        ],
      ),
    );
  }

  Container box(dynamic x) {
    return Container(
                  height: 100,
                  width: 100,
                  color: x,
                );
  }
}
