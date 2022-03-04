import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/themes/light_theme.dart';
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
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              ProgressWidget("Ejercicio"),
              SizedBox(
                height: 24,
              ),
              ProgressWidget("Meditar")
            ],
          ),
        )
      ],
    ));
  }
}

class ProgressWidget extends StatelessWidget {
  final String title;
  const ProgressWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text("$title"), Text("20/5 días")],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: const LinearProgressIndicator(
              value: 0.4,
              color: AppTheme.primary,
              backgroundColor: AppTheme.secondary,
              minHeight: 20,
            ),
          ),
        ),
      ],
    );
  }
}
