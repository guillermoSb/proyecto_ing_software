import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(child: Text('Health')),
    );
  }
}