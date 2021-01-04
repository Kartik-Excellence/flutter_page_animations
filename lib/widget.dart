import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigateTile extends StatelessWidget {
 
  String title;
  final Widget widget;
  NavigateTile(this.title, this.widget);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      tileColor: Colors.grey,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
    );
  }
}
