import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/widgets/pageTitle_widget.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        // ignore: prefer_const_constructors
        PageTitleWidget('Metas'),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/images/Group 16.png'),
        )
      ],
    ));
  }
}
