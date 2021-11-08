import 'package:catalog_app/Screens/home_detail.dart';
import 'package:catalog_app/Widgets/drawer.dart';
import 'package:catalog_app/Widgets/themes.dart';
import 'package:catalog_app/modals/cart.dart';
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
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),

          _cartTotal(),
        ],
      ),
    );
  }
} 

class _cartTotal extends StatelessWidget {
  final _cart = CartModel();
  _cartTotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl5.color(MyTheme.darkBluishColor).make(),
          30.widthBox,

          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet".text.make()));
          }, 
          style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(MyTheme.darkBluishColor)),
          child: "Buy".text.white.make() 
          
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({ Key? key }) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context,index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(icon: Icon(Icons.remove_circle_outline),
        onPressed: (){},),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}