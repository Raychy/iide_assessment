import 'package:shared_preferences/shared_preferences.dart';

class CartPreference {


  Future<bool> saveCarts(String carts) async {
    var preference = await SharedPreferences.getInstance();
    await preference.setString('carts', carts);
    return true;
  }

  Future getAllCarts() async {
    var preference = await SharedPreferences.getInstance();
    final String carts = preference.getString('carts');
    // print("SharedPreferences cart--------------------------------  ${carts.length}");
    return carts;
  }
  
}
