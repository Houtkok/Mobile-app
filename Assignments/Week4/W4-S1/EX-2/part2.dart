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

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(Product.dart.image), width: 100, height: 100,),
                      Text(Product.dart.title, style:const TextStyle(fontSize: 30)),
                      Text(Product.dart.description)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(Product.firebase.image), width: 100, height: 100,),
                      Text(Product.firebase.title, style:const TextStyle(fontSize: 30)),
                      Text(Product.firebase.description)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(Product.flutter.image), width: 100, height: 100,),
                      Text(Product.flutter.title, style:const TextStyle(fontSize: 30)),
                      Text(Product.flutter.description)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
