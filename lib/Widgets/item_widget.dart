import 'package:flutter/material.dart';
import 'package:catalog_app/modals/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
   const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Card(
        elevation: 50,
        child: ListTile(
          onTap: (){
            print("${item.name} pressed");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue[900]
          ),),
          
        ),
      ),
    );
  }
  
}