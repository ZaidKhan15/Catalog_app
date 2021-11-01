import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:catalog_app/Widgets/themes.dart';
import 'package:catalog_app/modals/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.all(0),
          children: [
            "\$${catalog.price}".text.xl3.red800.bold.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Buy".text.xl.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(children: [
                  catalog.name.text.xl4.bold
                      .color(MyTheme.darkBluishColor)
                      .make(),
                  catalog.desc.text.xl.make(),
                  "Eirmod et ut justo diam diam. Takimata invidunt diam ve diam sed rebum kasd amet, magna vero erat nonumy erat, sea at sed kasd invidunt accusam invidunt dolor sea eirmod, dolores at lorem eirmod labore Nights spoken prophet obeisance angels door, at your at the and at to, dreaming "
                      .text
                      .sm
                      .make()
                      .p16()
                ]).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
