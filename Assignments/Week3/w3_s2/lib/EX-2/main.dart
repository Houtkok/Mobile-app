 import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.all(40),
      color: Colors.blue[500],
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[300], borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text(
                "Barabing Baraboom",
                style: TextStyle(color: Colors.green),
              ),
            )
      ),
    ),
  ));
}
