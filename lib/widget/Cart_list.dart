
import 'package:flutter/material.dart';
import 'package:iide_assessment/model/cart_class.dart';


class CartList extends StatefulWidget {
  const CartList({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
     
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
          title: Text(widget.cart.cartName),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text(widget.cart.cartDesc),
              )
            : Container()
      ]),
    );
    

  }
}
