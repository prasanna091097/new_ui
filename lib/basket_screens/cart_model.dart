import 'package:equatable/equatable.dart';

import 'productmodel.dart';

class Cart extends Equatable {
  Cart();
  double get total =>
      products.fold(0, (total, current) => total + current.price);
  String get totalString => total.toStringAsFixed(2);
  List<Product> products = [
    const Product(
      id: '1',
      name: 'Double Cot',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.h4HGNrxfzeGEQCZIyWd3_wHaGO%26pid%3DApi&f=1', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 80,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      id: '2',
      name: 'Bed',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.PWK8XsMh-XaXJixCpK80NAHaHa%26pid%3DApi&f=1', //https://unsplash.com/photos/Viy_8zHEznk
      price: 92.99,
      isRecommended: false,
      isPopular: true,
    ),
    const Product(
      id: '3',
      name: 'Sofa',
      category: 'Soft Drinks',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.rok-fWtLnJeHCue6Pe6iHQHaEO%26pid%3DApi&f=1', //https://unsplash.com/photos/5LIInaqRp5s
      price: 69.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      id: '4',
      name: 'Chair',
      category: '',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.vvX5PLrhvccBwnXhlsXIkAHaJb%26pid%3DApi&f=1', //https://unsplash.com/photos/kcYXj4tBtes
      price: 42.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      id: '5',
      name: 'Arm Chair',
      category: '',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Yfim9FvvR3pMTQjk-Ygn7AHaId%26pid%3DApi&f=1', //https://unsplash.com/photos/CrK843Pl9a4
      price: 52.99,
      isRecommended: false,
      isPopular: false,
    ),
    const Product(
      id: '2',
      name: 'Bed',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.PWK8XsMh-XaXJixCpK80NAHaHa%26pid%3DApi&f=1', //https://unsplash.com/photos/Viy_8zHEznk
      price: 92.99,
      isRecommended: false,
      isPopular: true,
    ),
  ];

  @override
  List<Object?> get props => [];
}
