import 'package:flutter/material.dart';

enum Product {
  dart, flutter, firebase
}

extension ProductExtension on Product{
  String get image{
    switch (this){
      case Product.dart:
        return 'assets/dart.png';
      case Product.flutter:
        return 'assets/flutter.png';
      case Product.firebase:
        return 'assets/firebase.png';
    }
  }
  String get title {
    switch (this) {
      case Product.dart:
        return 'Dart';
      case Product.flutter:
        return 'Flutter';
      case Product.firebase:
        return 'Firebase';
    }
  }
  String get description {
    switch (this) {
      case Product.dart:
        return 'The best object language';
      case Product.flutter:
        return 'The best mobile widget';
      case Product.firebase:
        return 'The best cloud database';
    }
  }
}
class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(product.image), width: 100, height: 100,),
                      Text(product.title, style:const TextStyle(fontSize: 30)),
                      Text(product.description)
                    ],
                  ),
                ),
              ),
            );
  }
}
void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductCard(product: Product.dart),
            ProductCard(product: Product.firebase),
            ProductCard(product: Product.flutter),
          ],
        ),
      ),
    ),
  ));
}
