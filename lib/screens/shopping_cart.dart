import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'SHOPPING CART',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
