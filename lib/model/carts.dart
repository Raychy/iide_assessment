import 'package:flutter/material.dart';
import 'package:iide_assessment/model/cart_class.dart';
import 'package:iide_assessment/model/preference/cart_preference.dart';


class Carts {
  List<Cart>  _cartList =[
    Cart(id:null,cartName:"product 10",cartDesc:"this is a product",cartImage:"assets/images/h.jpg"),
  ];
List<Cart> get castList {
  return [..._cartList];
} 

bool cartStatus =false;

//add product to cart logic
   addToCart(cartName, cartImage, cartDesc) async {
    final newCart =
        Cart(cartName: cartName, cartImage: cartImage, cartDesc: cartDesc);
    // print(newCart);
    _cartList.add(newCart);
    print('new Added cartList-------------------- $_cartList ');
    final String encodedData = Cart.encode(_cartList);

    await CartPreference().saveCarts(encodedData);

    return newCart;
  }


}