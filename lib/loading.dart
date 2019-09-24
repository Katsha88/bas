import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'dart:math';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/animation.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void waiting() async {
    await new Future.delayed(const Duration(seconds: 12));

    Navigator.pushReplacementNamed(
      context,
      '/template',
    );
  }

  @override
  void initState() {
    super.initState();
    waiting();

    Timer(Duration(seconds: 8), () {
      setState(() => opacityLevel =  1.0 );

    });
  }
  double opacityLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildAnimation(),

          AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: opacityLevel,
            duration: Duration(seconds: 2),
            // The green box must be a child of the AnimatedOpacity widget.
            child:  texthere()
          )






          ],
        ),
      ),
    ));
  }

  final tween = MultiTrackTween([
    Track("size").add(Duration(seconds: 10), Tween(begin: 0.0, end: 150.0)),
    Track("color")
        .add(Duration(seconds: 2),
            ColorTween(begin: Colors.red, end: Colors.blue),
            curve: Curves.easeIn)
        .add(Duration(seconds: 2),
            ColorTween(begin: Colors.blue, end: Colors.green),
            curve: Curves.easeOut),
    Track("rotation").add(Duration(seconds: 1), ConstantTween(0.0)).add(
        Duration(seconds: 10), Tween(begin: 0.0, end: 2 * pi),
        curve: Curves.easeOutSine)
  ]);

  Widget buildAnimation() {
    return ControlledAnimation(
      playback: Playback.MIRROR,
      duration: tween.duration,
      tween: tween,
      builder: (context, animation) {
        return Transform.rotate(
          angle: animation["rotation"],
          child: Image.asset(
            "assets/images/logo1.png",
            width: animation["size"],
            height: animation["size"],
          ),
        );
      },
    );
  }


  Widget texthere(){ return

    Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Baseerah International School", style: TextStyle(
              fontFamily: "SF-Pro-Display-Bold",
                fontSize: 25,
                fontWeight: FontWeight.bold

            ),)
          ]
      )

  );}

}
