import 'package:flutter/material.dart';

import '../list.dart';
import '../logo.dart';

class SlideAnimation extends StatefulWidget {
  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slide Animation"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CallSlideAnimation("bounceIn",curveList[0]),
          CallSlideAnimation("bounceInOut",curveList[1]),
          CallSlideAnimation("bounceOut",curveList[2]),
          CallSlideAnimation("decelerate",curveList[3]),
          CallSlideAnimation("ease",curveList[4]),
          CallSlideAnimation("easeIn",curveList[5]),
          CallSlideAnimation("easeInBack",curveList[6]),
          CallSlideAnimation("easeInCirc",curveList[7]),
          CallSlideAnimation("easeInCubic",curveList[8]),
          CallSlideAnimation("easeInExpo",curveList[9]),
          CallSlideAnimation("easeInOut",curveList[10]),
          CallSlideAnimation("easeInOutBack",curveList[11]),
          CallSlideAnimation("easeInOutCirc",curveList[12]),
          CallSlideAnimation("easeInOutCubic",curveList[13]),
          CallSlideAnimation("easeInOutExpo",curveList[14]),
          CallSlideAnimation("easeInOutQuad",curveList[15]),
          CallSlideAnimation("easeInOutQuart",curveList[16]),
          CallSlideAnimation("easeInOutQuint",curveList[17]),
          CallSlideAnimation("easeInOutSine",curveList[18]),
          CallSlideAnimation("easeInQuad",curveList[19]),
          CallSlideAnimation("easeInQuart",curveList[20]),
          CallSlideAnimation("easeInQuint",curveList[21]),
          CallSlideAnimation("easeInSine",curveList[22]),
          CallSlideAnimation("easeInToLinear",curveList[23]),
          CallSlideAnimation("easeOut",curveList[24]),
          CallSlideAnimation("easeOutBack",curveList[25]),
          CallSlideAnimation("easeOutCubic",curveList[26]),
          CallSlideAnimation("easeOutExpo",curveList[27]),
          CallSlideAnimation("easeOutQuad",curveList[28]),
          CallSlideAnimation("easeOutQuart",curveList[29]),
          CallSlideAnimation("easeOutQuint",curveList[30]),
          CallSlideAnimation("easeOutSine",curveList[31]),
          CallSlideAnimation("elasticIn",curveList[32]),
          CallSlideAnimation("elasticInOut",curveList[33]),
          CallSlideAnimation("elasticOut",curveList[34]),
          CallSlideAnimation("fastLinearToSlowEaseIn",curveList[35]),
          CallSlideAnimation("fastOutSlowIn",curveList[36]),
          CallSlideAnimation("linear",curveList[37]),
          CallSlideAnimation("linearToEaseOut",curveList[38]),
          CallSlideAnimation("slowMiddle",curveList[39]),
          
        ],),
      )
    );
  }
}

class CallSlideAnimation extends StatelessWidget {
  String title;
  Curve curveList;
  CallSlideAnimation(this.title, this.curveList);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, anotherAnimation) {
              return Logo();
            },
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(curve: curveList, parent: animation);
              return SlideTransition(
                position: Tween(begin: Offset(0.0, 2.0), end: Offset(0.0, 0.0))
                    .animate(animation),
                child: child,
              );
            }));
      },
    );
  }
}
