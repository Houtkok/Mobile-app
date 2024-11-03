import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
         child: Column(
          //mainAxisAlignment use for align vertically
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlginemtn use for align horizontally
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 169, 7) ,borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 20),
                      child: Icon(Icons.sentiment_satisfied_alt, color: Colors.white),
                    ),
                    Text('Happy', style: TextStyle(color: Colors.white, fontSize: 30),),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 169, 7) ,borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 20),
                      child: Icon(Icons.sentiment_dissatisfied, color: Colors.white),
                    ),
                    Text('Not Happy', style: TextStyle(color: Colors.white, fontSize: 30)),
                  ],
                ),
              ),
            ),
          ],
         ),
        ),
       )
    ),
  );
}