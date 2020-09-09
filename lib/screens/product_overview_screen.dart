import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (context, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
