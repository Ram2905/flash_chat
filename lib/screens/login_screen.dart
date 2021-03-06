import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Wrap(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                      height: 200.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration:
                        KtextFieldDecoration.copyWith(hintText: "Enter Email"),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: KtextFieldDecoration.copyWith(
                        hintText: 'Enter password'),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  RoundedButon(
                      title: 'Log in',
                      color: Colors.lightBlueAccent,
                      onpressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
