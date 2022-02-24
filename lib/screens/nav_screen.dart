import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/screens/calendar_screen.dart';
import 'package:health_app/screens/goals_screen.dart';
import 'package:health_app/screens/health_screen.dart';
import 'package:health_app/screens/home_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        onTap: (index) {
          print('Clicked on tab $index');
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.flag), label: 'Metas'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart_circle), label: 'Salud'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar), label: 'Calendario'),
        ],
      ), 
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomeScreen();
          case 1:
            return GoalsScreen();
          case 2:
            return HealthScreen();
          case 3:
            return CalendarScreen();
          default:
            return Container();
        }
      });
  }
}