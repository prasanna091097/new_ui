import 'package:flutter/material.dart';
import 'package:ui_app/cart_screens_new/widgets/cart_products.dart';
import 'package:ui_app/cart_screens_new/widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            CartProducts(),
            const Divider(
              thickness: 2,
            ),
            CartTotal(),
          ],
        ));
  }
}
