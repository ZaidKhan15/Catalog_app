import 'package:catalog_app/modals/catalog.dart';


class CartModel {

//(BAD APPROACH)
//making objects singeleton so that whenever we inintailize new object it continues with previous refrence
static final cartModel = CartModel._internal();

 CartModel._internal();

 factory CartModel() => cartModel;
 //singelton add
  // catalog field
   late CatalogModel _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
   assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => CatalogModel.getbyId(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}