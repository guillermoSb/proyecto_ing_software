import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/widgets/pageTitle_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: const [PageTitleWidget('Home')],
    ));
  }
}
