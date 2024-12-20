import 'package:flutter/material.dart';

class AnimationThree extends StatefulWidget {
  static const String id = 'AnimationThree';

  @override
  _AnimationThreeState createState() => _AnimationThreeState();
}

class _AnimationThreeState extends State<AnimationThree> {
  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animation 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TweenAnimationBuilder(
                tween: _scaleTween,
                duration: Duration(milliseconds: 600),
                builder: (context, scale, child) {
                  return Transform.scale(
                    scale: scale,
                    child: child,
                  );
                },
                child: Container(
                  child: Center(
                    child: Text('Apoorv'),
                  ),
                  height: 100,
                  width: 100,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
