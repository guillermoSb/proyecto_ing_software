import 'package:flutter/material.dart';

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
            child: Text(title)),
      ],
    );
  }
}
