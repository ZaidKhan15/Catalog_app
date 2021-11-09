import 'package:catalog_app/Widgets/themes.dart';
import 'package:catalog_app/modals/cart.dart';
import 'package:catalog_app/modals/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class addtoCart extends StatefulWidget {
  final Item catalog;
  const addtoCart({Key? key, required this.catalog}) : super(key: key);

  @override
  State<addtoCart> createState() => _addtoCartState();
}

class _addtoCartState extends State<addtoCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          final _catalog = CatalogModel();
          isInCart = isInCart.toggle();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);

          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isInCart ? Icon(Icons.done) : "Add to Cart".text.make(),
    );
  }
}