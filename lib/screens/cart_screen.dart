import 'package:flutter/material.dart';
import 'package:ui_app/basket_screens/cart_model.dart';

import 'package:ui_app/basket_screens/productmodel.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
              title: const Text(''),
              flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0XFFA1282A),
                  Color.fromARGB(255, 164, 53, 52),
                  Color(0XFF711F2C),
                ],
              ))))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
                height: 400,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return CartProductCard(product: Cart().products[index]);
                    },
                    itemCount: Cart().products.length)),

            // CartProductCard(product: Product.products[1]),
            // CartProductCard(product: Product.products[2]),
            // CartProductCard(product: Product.products[3]),
            // CartProductCard(product: Product.products[4]),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.shopping_basket,
                  size: 40,
                  color: Colors.red,
                ),
                Text(" TOTAL : ", style: Theme.of(context).textTheme.headline6),
                Text('\$ ${Cart().totalString}',
                    style: Theme.of(context).textTheme.headlineLarge),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final Product product;
  const CartProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              Text('1'),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
