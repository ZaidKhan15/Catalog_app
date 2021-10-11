import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Login to Continue',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ));
  }
}
