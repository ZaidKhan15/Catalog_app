import 'package:flutter/material.dart';

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
        drawer: Drawer(),
      );
  }
}