import 'package:catalog_app/modals/catalog.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/Widgets/drawer.dart';
import 'package:catalog_app/Widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  

  
  Widget build(BuildContext context) {
    final dummylist =List.generate(50,(index)=> CatalogModel.items[0]);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Catalog",style: TextStyle(color: Colors.black),)
      ),
       
        body: ListView.builder(
          
          itemCount: dummylist.length,
          itemBuilder: (context,index)
          {
            return ItemWidget(item: dummylist[index],);
          },
        ),
        drawer: MyDrawer(),
      );
  }
}