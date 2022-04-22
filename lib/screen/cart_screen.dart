import 'package:flutter/material.dart';
import 'package:iide_assessment/model/cart_class.dart';
import 'package:iide_assessment/model/carts.dart';
import 'package:iide_assessment/model/preference/cart_preference.dart';
import 'package:iide_assessment/widget/Cart_list.dart';

class CartScreen extends StatelessWidget {
    static const routeName  = '/cart';
  const CartScreen({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f9f9),
        appBar: AppBar(
          title: Text('Cart'),
          centerTitle: true,
        ),
                body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
           
            FutureBuilder(
              future: CartPreference().getAllCarts(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var carts = snapshot.data;
                  final List<Cart> newCarts = Cart.decode(carts);
                  // print(newcarts);
                  // print("newCarts newCarts ${newCarts.length} ");
                  return newCarts.length == 0 ? Center(child: Text('No cart Added yet!')): Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: newCarts.length,
                    itemBuilder: (BuildContext context, int index) {
                      var cart = newCarts[index];
                     
                      return CartList(cart: cart);
                    }));
                }
                return CircularProgressIndicator();
              },
            ),
            
          ]),
        ))
    );
  }
}