import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      title: 'Red Shirt',
      description: 'Red shirt with good price',
      price: 100,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/15/34/shirt-150087_960_720.png',
    ),
    Product(
      id: '2',
      title: 'Red Shirt2',
      description: 'Red shirt with good price2',
      price: 200,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/15/34/shirt-150087_960_720.png',
    ),
    Product(
      id: '3',
      title: 'Red Shirt3',
      description: 'Red shirt with good price3',
      price: 300,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/15/34/shirt-150087_960_720.png',
    ),
    Product(
      id: '4',
      title: 'Red Shirt4',
      description: 'Red shirt with good price4',
      price: 400,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/15/34/shirt-150087_960_720.png',
    ),
    Product(
      id: '5',
      title: 'Red Shirt5',
      description: 'Red shirt with good price5',
      price: 500,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/15/34/shirt-150087_960_720.png',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
//    _items.add(value);
    notifyListeners();
  }
}
