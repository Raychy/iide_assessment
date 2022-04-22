import 'package:flutter/material.dart';
import 'package:iide_assessment/model/cart_class.dart';
import 'package:iide_assessment/model/carts.dart';
import 'package:iide_assessment/model/product_class.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  bool isAdded;
  List<Cart> prefCartList = [];
  @override
  void initState() {
    super.initState();
    isAdded = widget.product.isAddedToCart;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ListTile(
              leading: Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                child: Image.asset(
                  widget.product.productImage,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(widget.product.productName,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              trailing: isAdded
                  ? TextButton(
                      onPressed: () {},
                      child: Text('Added'),
                    )
                  : TextButton(
                      child: Text('Add'),
                      onPressed: () {
                        Carts().addToCart(
                            widget.product.productName,
                            widget.product.productImage,
                            widget.product.productDesc);

                        setState(() {
                          isAdded = true;
                        });
                        Scaffold.of(context).hideCurrentSnackBar();
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Added item to cart!',
                            ),
                            duration: Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                    ),
            )),
      ),
    );
  }
}
