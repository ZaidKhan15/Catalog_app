import 'package:catalog_app/Screens/home_detail.dart';
import 'package:catalog_app/Widgets/drawer.dart';
import 'package:catalog_app/Widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/modals/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(Colors.black).make(),
        
      ),
      
    );
  }
} 