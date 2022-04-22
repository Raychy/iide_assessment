import 'dart:convert';

class Product{
final int id;
final String productName;
final String productDesc;
final String productImage;
final bool isAddedToCart;
Product({
  this.id,
  this.productName,
  this.productDesc,
  this.productImage,
  this.isAddedToCart = false
});
factory Product.fromJson(Map<String, dynamic> jsonData) {
    return Product(
      id: jsonData['id'],
      productName: jsonData['productName'],
      productDesc: jsonData['productDesc'],
      productImage: jsonData['productImage'],
      isAddedToCart: jsonData['isAddedToCart'],
     
    );
  }

  static Map<String, dynamic> toMap(Product product) => {
        'id': product.id,
        'productName': product.productName,
        'productDesc': product.productDesc,
        'productImage': product.productImage,
        'isAddedToCart': product.isAddedToCart,
       
      };

  static String encode(List<Product> products) => json.encode(
        products
            .map<Map<String, dynamic>>((product) => Product.toMap(product))
            .toList(),
      );

  static List<Product> decode(String products) =>
      (json.decode(products) as List<dynamic>)
          .map<Product>((item) => Product.fromJson(item))
          .toList();
}