import 'package:flutter/material.dart';
import 'package:iide_assessment/screen/cart_screen.dart';
import 'package:iide_assessment/screen/product_screen.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IIDE Assessment',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: ProductScreen(),
       routes: {
            ProductScreen.routeName: (ctx) => ProductScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            
          },
    );
  }
}
