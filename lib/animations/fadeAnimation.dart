import 'package:flutter/material.dart';

import '../list.dart';
import '../logo.dart';

class CallFadeAnimation extends StatelessWidget {
  String title;
  Curve curveList;
  CallFadeAnimation(this.title, this.curveList);
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
              animation =
                  CurvedAnimation(curve: curveList, parent: animation);
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            }));
      },
    );
  }
}

class FadeAnimation extends StatelessWidget {
  static const routeName = 'Fade_Animation';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Animation"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CallFadeAnimation("bounceIn",curveList[0]),
          CallFadeAnimation("bounceInOut",curveList[1]),
          CallFadeAnimation("bounceOut",curveList[2]),
          CallFadeAnimation("decelerate",curveList[3]),
          CallFadeAnimation("ease",curveList[4]),
          CallFadeAnimation("easeIn",curveList[5]),
          CallFadeAnimation("easeInBack",curveList[6]),
          CallFadeAnimation("easeInCirc",curveList[7]),
          CallFadeAnimation("easeInCubic",curveList[8]),
          CallFadeAnimation("easeInExpo",curveList[9]),
          CallFadeAnimation("easeInOut",curveList[10]),
          CallFadeAnimation("easeInOutBack",curveList[11]),
          CallFadeAnimation("easeInOutCirc",curveList[12]),
          CallFadeAnimation("easeInOutCubic",curveList[13]),
          CallFadeAnimation("easeInOutExpo",curveList[14]),
          CallFadeAnimation("easeInOutQuad",curveList[15]),
          CallFadeAnimation("easeInOutQuart",curveList[16]),
          CallFadeAnimation("easeInOutQuint",curveList[17]),
          CallFadeAnimation("easeInOutSine",curveList[18]),
          CallFadeAnimation("easeInQuad",curveList[19]),
          CallFadeAnimation("easeInQuart",curveList[20]),
          CallFadeAnimation("easeInQuint",curveList[21]),
          CallFadeAnimation("easeInSine",curveList[22]),
          CallFadeAnimation("easeInToLinear",curveList[23]),
          CallFadeAnimation("easeOut",curveList[24]),
          CallFadeAnimation("easeOutBack",curveList[25]),
          CallFadeAnimation("easeOutCubic",curveList[26]),
          CallFadeAnimation("easeOutExpo",curveList[27]),
          CallFadeAnimation("easeOutQuad",curveList[28]),
          CallFadeAnimation("easeOutQuart",curveList[29]),
          CallFadeAnimation("easeOutQuint",curveList[30]),
          CallFadeAnimation("easeOutSine",curveList[31]),
          CallFadeAnimation("elasticIn",curveList[32]),
          CallFadeAnimation("elasticInOut",curveList[33]),
          CallFadeAnimation("elasticOut",curveList[34]),
          CallFadeAnimation("fastLinearToSlowEaseIn",curveList[35]),
          CallFadeAnimation("fastOutSlowIn",curveList[36]),
          CallFadeAnimation("linear",curveList[37]),
          CallFadeAnimation("linearToEaseOut",curveList[38]),
          CallFadeAnimation("slowMiddle",curveList[39]),
          
        ],),
      )
    );
  }
}
