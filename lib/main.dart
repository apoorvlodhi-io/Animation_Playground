import 'package:flutter/material.dart';
import 'package:flutteranimationbasics/AnimationOne.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Animation1'),
                onPressed: () {
                  Navigator.pushNamed(context, AnimationOne.id);
                },
              ),
              RaisedButton(
                child: Text('Animation2'),
                onPressed: () {
                  Navigator.pushNamed(context, AnimationTwo.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
