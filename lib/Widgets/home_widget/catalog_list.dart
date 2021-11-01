import 'package:catalog_app/Screens/home_detail.dart';
import 'package:flutter/material.dart';
import 'catalog_item_image.dart';
import 'package:catalog_app/modals/catalog.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catalog: catalog))),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
      itemCount: CatalogModel.items.length,
    );
  }
}
