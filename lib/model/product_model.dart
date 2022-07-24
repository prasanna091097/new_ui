class Product {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final String oprice;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.oprice,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  List<Object?> get props => [
        id,
        name,
        category,
        imageUrl,
        oprice,
        price,
        isRecommended,
        isPopular,
      ];
  static List<Product> products = [
    const Product(
      id: '1',
      name: 'Double Cot',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.h4HGNrxfzeGEQCZIyWd3_wHaGO%26pid%3DApi&f=1', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 80,
      oprice: "79",
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      id: '2',
      name: 'Bed',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.PWK8XsMh-XaXJixCpK80NAHaHa%26pid%3DApi&f=1', //https://unsplash.com/photos/Viy_8zHEznk
      price: 2.99,
      oprice: "79",
      isRecommended: false,
      isPopular: true,
    ),
    const Product(
      id: '3',
      name: 'Sofa',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.rok-fWtLnJeHCue6Pe6iHQHaEO%26pid%3DApi&f=1', //https://unsplash.com/photos/5LIInaqRp5s
      price: 2.99,
      oprice: "79",
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      id: '4',
      name: 'Chair',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.vvX5PLrhvccBwnXhlsXIkAHaJb%26pid%3DApi&f=1', //https://unsplash.com/photos/kcYXj4tBtes
      price: 52.99,
      oprice: "79",
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      id: '5',
      name: 'Arm Chair',
      category: 'Furniture',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Yfim9FvvR3pMTQjk-Ygn7AHaId%26pid%3DApi&f=1', //https://unsplash.com/photos/CrK843Pl9a4
      price: 62.99,
      oprice: "79",
      isRecommended: false,
      isPopular: false,
    ),
    const Product(
      id: '6',
      name: 'Soft Drink #1',
      category: 'Furniture',
      imageUrl:
          'https://images.unsplash.com/photo-1598614187854-26a60e982dc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 2.99,
      oprice: "79",
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      id: '7',
      name: 'Soft Drink #2',
      category: 'Furniture',
      imageUrl:
          'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=488&q=80', //https://unsplash.com/photos/Viy_8zHEznk
      price: 2.99,
      oprice: "79",
      isRecommended: false,
      isPopular: true,
    ),
  ];
}
