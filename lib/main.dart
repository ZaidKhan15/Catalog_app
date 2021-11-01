import 'package:catalog_app/Screens/cart_page.dart';
import 'package:catalog_app/Screens/homepage.dart';
import 'package:catalog_app/Screens/loginpage.dart';
import 'package:catalog_app/Widgets/themes.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'Screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: MyRoute.homeRoute,
      routes: {
        "/": (context) => Loginpage(),
        MyRoute.homeRoute:(context) => Homepage(),
        MyRoute.loginRoute: (context) => Loginpage(),
        MyRoute.cartroute: (context)=> CartPage(),
        
      },
      
    );
    
  }
}
    
