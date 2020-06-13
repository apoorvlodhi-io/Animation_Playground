import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutteranimationbasics/AnimationOne.dart';
import 'package:flutteranimationbasics/AnimationThree.dart';
import 'package:flutteranimationbasics/AnimationTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Basics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AnimationOne.id: (context) => AnimationOne(),
        AnimationTwo.id: (context) => AnimationTwo(),
        AnimationThree.id: (context) => AnimationThree(),
      },
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
//  static const String id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Animation Basics'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Text(
                          'Animation1',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: UniqueColor.getColor(),
                        onPressed: () {
                          Navigator.pushNamed(context, AnimationOne.id);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Text(
                          'Animation2',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: UniqueColor.getColor(),
                        onPressed: () {
                          Navigator.pushNamed(context, AnimationTwo.id);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Text(
                          'Animation3',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: UniqueColor.getColor(),
                        onPressed: () {
                          Navigator.pushNamed(context, AnimationThree.id);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UniqueColor {
  static Random random = Random();
  static Color getColor() {
    return Color.fromRGBO(
        random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
  }
}
