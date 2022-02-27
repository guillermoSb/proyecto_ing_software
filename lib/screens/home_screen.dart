import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/themes/light_theme.dart';
import 'package:health_app/widgets/pageTitle_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        PageTitleWidget('Home'),
        const SizedBox(height: 50),
        Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppTheme.primary, width: 3),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: const [
                Text(
                  "140",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Text("Puntos")
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Card(
          child: Container(
            child: SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      AppTheme.secondary.withOpacity(0.5),
                      AppTheme.primary.withOpacity(0.5)
                    ])),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Próxima tarea"),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Meditar"),
                          Container(
                            decoration: BoxDecoration(
                                color: AppTheme.primary.withOpacity(0.7),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("10min"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
