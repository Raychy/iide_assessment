import 'dart:convert';

class Cart{
  final int id;
  final String cartName;
final String cartDesc;
final String cartImage;
Cart({
  this.id,
  this.cartName, this.cartDesc, this.cartImage
});

factory Cart.fromJson(Map<String, dynamic> jsonData) {
    return Cart(
      id: jsonData['id'],
      cartName: jsonData['cartName'],
      cartDesc: jsonData['cartDesc'],
      cartImage: jsonData['cartImage'],
     
    );
  }

  static Map<String, dynamic> toMap(Cart cart) => {
        'id': cart.id,
        'cartName': cart.cartName,
        'cartDesc': cart.cartDesc,
        'cartImage': cart.cartImage,
       
      };

  static String encode(List<Cart> carts) => json.encode(
        carts
            .map<Map<String, dynamic>>((cart) => Cart.toMap(cart))
            .toList(),
      );

  static List<Cart> decode(String carts) =>
      (json.decode(carts) as List<dynamic>)
          .map<Cart>((item) => Cart.fromJson(item))
          .toList();
}