import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/cart_screens_new/screens/cart_screen.dart';
import 'package:ui_app/cart_screens_new/widgets/catalog.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("catalog"),
          actions: [
            IconButton(
                onPressed: (() => Get.to(() => const CartScreen())),
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: const SafeArea(child: CatalogProducts()));
  }
}
