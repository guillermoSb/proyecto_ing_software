import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/screens/nav_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CupertinoTextField(placeholder: 'Email'),
            const SizedBox(height: 18),
            const CupertinoTextField(placeholder: 'Password', obscureText: true, enableSuggestions: false, autocorrect: false,),
            const SizedBox(height: 18),
            CupertinoButton.filled(child: Text('Login'), onPressed: (){
              Navigator.pushReplacement(
                context, 
                CupertinoPageRoute(
                  builder: (context) => const NavigationScreen()
                  )
                );
            })
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          
        ),
      ),
    );
  }
}