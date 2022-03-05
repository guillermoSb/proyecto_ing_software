import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/themes/light_theme.dart';
import 'package:health_app/widgets/pageTitle_widget.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        PageTitleWidget('Metas'),
        Padding(
          padding: EdgeInsets.all(8),
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 223,
            child: ListView(
              shrinkWrap: true,
              children: [
                GoalCheckListTile("Ejercicio"),
                Divider(),
                GoalCheckListTile("Meditar"),
                Divider(),
                GoalCheckListTile("Medicinas"),
                Divider(),
                GoalCheckListTile("Limpieza Personal"),
                Divider()
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class GoalCheckListTile extends StatelessWidget {
  final String activity;
  const GoalCheckListTile(
    this.activity, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: SizedBox(width: 20, height: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.grey)),
            ),
            SizedBox(
              width: 10,
            ),
            Text(activity),
            Spacer(),
            ElevatedButton(
              child: const Icon(Icons.add),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), primary: AppTheme.primary),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text("Sub Tarea 1"),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Divider(
            color: AppTheme.primary.withOpacity(0.5),
          ),
        ),
        Text("Sub Tarea 2"),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Divider(
            color: AppTheme.primary.withOpacity(0.5),
          ),
        ),
        Text("Sub Tarea 3"),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Divider(
            color: AppTheme.primary.withOpacity(0.5),
          ),
        ),
        Text("Sub Tarea 4"),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
