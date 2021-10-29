import 'package:catalog_app/modals/catalog.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/Widgets/drawer.dart';
import 'package:catalog_app/Widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  

  
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

    void initState(){
      super.initState();
      loadData();
    }
   
   loadData()async
   {
      final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
      final decodeJson = jsonDecode(catalogJson);
      var productData = decodeJson["products"];
      

   }

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