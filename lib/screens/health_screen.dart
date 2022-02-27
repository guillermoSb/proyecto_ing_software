import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/widgets/pageTitle_widget.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        PageTitleWidget('Salud'),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/images/Frame 24.png'),
        )
        /*Expanded(
          child: Align(
            child: Transform.translate(
                offset: const Offset(0, 0),
                child: Image.asset('assets/images/Frame 24.png')),
            alignment: Alignment.bottomLeft,
          ),
        )*/
      ],
    ));
  }
}
