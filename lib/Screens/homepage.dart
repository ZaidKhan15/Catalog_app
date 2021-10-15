import 'package:flutter/material.dart';
import 'package:catalog_app/Widgets/drawer.dart';

class Homepage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Catalog")
      ),
       
        body: Center(
          child: Container(
            child: Text('Welcome to Flutter World'),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}