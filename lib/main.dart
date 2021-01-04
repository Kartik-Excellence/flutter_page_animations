//here i show five types of page animations in flutter
// SlideAnimation
// FadeAnimation
// ScaleAnimation
// SizeAnimation
// RotationAnimation

import 'package:flutter/material.dart';
import 'package:flutter_page_animations/animations/RotationAnimation.dart';
import 'package:flutter_page_animations/animations/fadeAnimation.dart';
import 'package:flutter_page_animations/animations/scaleAnimation.dart';
import 'package:flutter_page_animations/animations/sizeAnimation.dart';
import 'package:flutter_page_animations/animations/slideAnimation.dart';
import 'package:flutter_page_animations/widget.dart';

void main() => runApp(MaterialApp(title: "Animation Widget",home: MyApp(),));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Page Animation List'),
          ),
          body: Column(
            children: [
             NavigateTile("Slide Animations",SlideAnimation()),
             NavigateTile("Fade Animations",FadeAnimation()),
             NavigateTile("Scale Animations",ScaleAnimation()),
             NavigateTile("Size Animations",SizeAnimation()),
             NavigateTile("Rotation Animations",RotationAnimation()),
            ],
          )
    );
  }
}