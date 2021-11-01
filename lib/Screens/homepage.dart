import 'dart:convert';
import 'package:catalog_app/Widgets/home_widget/catalog_header.dart';
import 'package:catalog_app/Widgets/home_widget/catalog_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_app/Widgets/themes.dart';
import 'package:catalog_app/modals/catalog.dart';



class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: MyTheme.creamColor,
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              CatalogList().expand()
            else    
               CircularProgressIndicator().centered().expand(),
              
          ],
        ),
      ),
    ));
  }
}





