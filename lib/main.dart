import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          backgroundColor: Colors.blue,
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

int buttonPressedd = 1;

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              buttonPressedd = Random().nextInt(5) + 1;
            });
          },
          child: Image(image: AssetImage('images/ball$buttonPressedd.png'))),
    );
  }
}
