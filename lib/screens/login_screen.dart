import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/screens/nav_screen.dart';
import 'package:health_app/widgets/pageTitle_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            const PageTitleWidget('Sign in'),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CupertinoTextField(placeholder: 'Email'),
                  const SizedBox(height: 18),
                  const CupertinoTextField(
                    placeholder: 'Password',
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                  const SizedBox(height: 18),
                  CupertinoButton.filled(
                      child: const Text('Entrar'),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    const NavigationScreen()));
                      })
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              ),
            ),
            Expanded(
              child: Align(
                child: Transform.translate(
                    offset: const Offset(-20, 50),
                    child: Image.asset('assets/images/blob01.png')),
                alignment: Alignment.bottomLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}
