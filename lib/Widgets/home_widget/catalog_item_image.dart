import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_app/Widgets/themes.dart';

import 'package:catalog_app/modals/catalog.dart';


class CatalogItem extends StatelessWidget {
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.color(MyTheme.darkBluishColor).make(),
            catalog.desc.text.size(7).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.all(0),
              children: [
                "\$${catalog.price}".text.bold.make(),
                _addtoCart()
              ],
            ).pOnly(right: 16.0)
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class _addtoCart extends StatefulWidget {
  const _addtoCart({
    Key? key,
  }) : super(key: key);

  @override
  State<_addtoCart> createState() => _addtoCartState();
}

class _addtoCartState extends State<_addtoCart> {

  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        setState(() {
          
        });
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(MyTheme.darkBluishColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isAdded?Icon(Icons.done):"Add to Cart".text.make(),
    );
  }
}

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p3
        .color(MyTheme.creamColor)
        .make()
        .p8()
        .w40(context);
  }
}
