import 'package:flutter/material.dart';
import 'package:iide_assessment/model/products.dart';
import 'package:iide_assessment/screen/cart_screen.dart';
import 'package:iide_assessment/widget/product_list.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/ProductScreen';
  const ProductScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f9f9),
        appBar: AppBar(
          title: Text('App'),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  CartScreen.routeName,
                );
              },
              child: Text('Cart',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: Products().productList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var product = Products().productList[index];
                      return ProductList(product: product);
                    })),
            
          ]),
        )));
  }
}
