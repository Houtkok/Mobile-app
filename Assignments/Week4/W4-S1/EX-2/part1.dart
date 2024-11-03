import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/dart.png'), width: 100, height: 100,),
                      Text('DART', style: TextStyle(fontSize: 30)),
                      Text('The best object language')
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/firebase.png'), width: 100, height: 100,),
                      Text('FireBase'),
                      Text('The best cloud database')
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/flutter.png'), width: 100, height: 100,),
                      Text('FLUTTER'),
                      Text('The best mobile widget')
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
