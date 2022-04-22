
import 'package:iide_assessment/model/product_class.dart';

class Products {
  List<Product> _productList = [
  Product(
      productName: 'product 1',
      productDesc: 'this is a product',
      productImage: 'assets/images/a.jpg'),
  Product(
      productName: 'product 3',
      productDesc: 'this is a product',
      productImage: 'assets/images/c.jpg'),
  Product(
      productName: 'product 5',
      productDesc: 'this is a product',
      productImage: 'assets/images/e.png'),
  Product(
      productName: 'product 6',
      productDesc: 'this is a product',
      productImage: 'assets/images/f.jpg'),
  Product(
      productName: 'product 8',
      productDesc: 'this is a product',
      productImage: 'assets/images/c.jpg'),
  Product(
      productName: 'product 10',
      productDesc: 'this is a product',
      productImage: 'assets/images/h.jpg'),
];
List<Product> get productList {
  return [..._productList];
}

}