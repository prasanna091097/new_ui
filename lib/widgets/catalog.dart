import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import '../controller/cart_controller.dart';
import '../model/product_model.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: Product.products.length,
          itemBuilder: ((BuildContext context, int index) {
            return CatalogProductsCard(index: index);
          })),
    );
  }
}

class CatalogProductsCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProductsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(Product.products[index].imageUrl)),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  Product.products[index].name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Text.rich(TextSpan(
                        text: Product.products[index].oprice,
                        style: const TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough))),
                    Text('\$${Product.products[index].price}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: (() {
                  cartController.addProduct(Product.products[index]);
                }),
                icon: const Icon(Icons.add_circle))
          ],
        ),
      ),
    );
  }
}



// class CatalogProducts extends StatelessWidget {
//   const CatalogProducts({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: Container(
//             decoration: const BoxDecoration(
//                 gradient: LinearGradient(colors: [
//           Color(0XFFA1282A),
//           Color.fromARGB(255, 164, 53, 52),
//           Color(0XFF711F2C),
//         ], begin: Alignment.topCenter, end: Alignment.topRight))),
//         actions: [
//           IconButton(
//             onPressed: () {
//               // method to show the search bar
//               showSearch(
//                   context: context,
//                   // delegate to customize the search bar
//                   delegate: CustomSearchDelegate());
//             },
//             icon: const Icon(Icons.search),
//           )
//         ],
//       ),
//       body: Flexible(
//           child: ListView.builder(
//               itemCount: Product.products.length,
//               itemBuilder: ((BuildContext context, int index) {
//                 return CatalogProductsCard(index: index);
//               }))),
//     );
//   }
// }

// class CatalogProductsCard extends StatelessWidget {
//   final cartController = Get.put(CartController());
//   final int index;
//   CatalogProductsCard({Key? key, required this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: NetworkImage(Product.products[index].imageUrl)),
//             ),
//           ),
//           Expanded(
//             child: Text(
//               Product.products[index].name,
//               style: const TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 18,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Text('\$${Product.products[index].price}',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 )),
//           ),
//           IconButton(
//               onPressed: (() {
//                 cartController.addProduct(Product.products[index]);
//               }),
//               icon: const Icon(Icons.add_circle))
//         ],
//       ),
//     );
//   }
// }

// class CustomSearchDelegate extends SearchDelegate {
//   List<String> searchTerms = [];

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: const Icon(Icons.clear),
//       ),
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: const Icon(Icons.arrow_back),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
// }
