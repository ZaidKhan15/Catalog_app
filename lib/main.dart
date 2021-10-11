import 'package:catalog_app/Screens/homepage.dart';
import 'package:catalog_app/Screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) =>Homepage(),
      },
    );
    
  }
}
    
