import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Container( 
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius:  const BorderRadius.all(Radius.circular(30)),
              color : Colors.blue[100]
            ),
            child: const Center(
              child: Text("OOP",
                style: TextStyle(color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius:  const BorderRadius.all(Radius.circular(30)),
              color : Colors.blue[300]
            ),
            child: const Center(
              child: Text("Flutter",
                style: TextStyle(color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius:  const BorderRadius.all(Radius.circular(30)),
              color : Colors.blue[600]
            ),
            child: const Center(
              child: Text("Dart",
                style: TextStyle(color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius:  const BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(colors: [Colors.blue[100]!, Colors.blue[300]!,Colors.blue[600]!])
            ),
            child: const Center(
              child: Text("Hola",
                style: TextStyle(color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          )
        ]
      ),
    ),
  ));
}
