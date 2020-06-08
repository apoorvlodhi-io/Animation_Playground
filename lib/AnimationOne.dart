import 'package:flutter/material.dart';

class AnimationOne extends StatefulWidget {
  static const String id = 'AnimationOne';

  @override
  _AnimationOneState createState() => _AnimationOneState();
}

class _AnimationOneState extends State<AnimationOne> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.lightBlueAccent;

  double _updateState() {
    setState(() {
      if (_color == Colors.lightBlueAccent) {
        _width = 350;
        _height = 350;
        _color = Colors.deepOrangeAccent;
      } else {
        _width = 100;
        _height = 100;
        _color = Colors.lightBlueAccent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.linear,
                child: Center(
                  child: Text('Apoorv'),
                ),
                height: _height,
                width: _width,
                color: _color,
              ),
              RaisedButton(
                  child: Text('Animate'),
                  onPressed: () {
                    _updateState();
                  })
            ],
          ),
        ),
      ),
    );
  }
}

/*------------------------------------*/

//import 'package:flutter/material.dart';
//
//class AnimationOne1 extends StatefulWidget {
//  static const String id = 'AnimationOne';
//  // This widget is the root of your application.
//  @override
//  _AnimationOne1State createState() => _AnimationOne1State();
//}
//
//class _AnimationOne1State extends State<AnimationOne1> {
//  double _width = 100;
//  double _height = 100;
//  Color _color = Colors.lightBlueAccent;
//
//  double _updateState() {
//    setState(() {
//      if (_color == Colors.lightBlueAccent) {
//        _width = 350;
//        _height = 350;
//        _color = Colors.deepOrangeAccent;
//      } else {
//        _width = 100;
//        _height = 100;
//        _color = Colors.lightBlueAccent;
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return SafeArea(
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text('Animation Basics'),
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              AnimatedContainer(
//                duration: Duration(milliseconds: 500),
//                curve: Curves.linear,
//                child: Center(
//                  child: Text('Apoorv'),
//                ),
//                height: _height,
//                width: _width,
//                color: _color,
//              ),
//              RaisedButton(
//                  child: Text('Animate'),
//                  onPressed: () {
//                    _updateState();
//                  })
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
