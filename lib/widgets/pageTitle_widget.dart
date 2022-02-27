import 'package:flutter/material.dart';
import 'package:health_app/themes/light_theme.dart';

class PageTitleWidget extends StatelessWidget {
  final String title;
  const PageTitleWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text(
              title,
              style: TextStyle(color: AppTheme.textDark, fontSize: 47),
            )),
      ],
    );
  }
}
