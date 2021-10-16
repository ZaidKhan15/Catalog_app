import 'package:catalog_app/modals/catalog.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/Widgets/drawer.dart';
import 'package:catalog_app/Widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Catalog",style: TextStyle(color: Colors.black),)
      ),
       
        body: ListView.builder(
          itemCount: catalogModel.items.length,
          itemBuilder: (context,index)
          {
            return ItemWidget();
          },
        ),
        drawer: MyDrawer(),
      );
  }
}