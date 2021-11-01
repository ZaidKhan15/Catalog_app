import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_app/Widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "ShoppZone".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
          "Trending Products".text.xl2.make()
        ],
      ),
    );
  }
}