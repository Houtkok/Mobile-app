import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const HobbyCard({super.key, required this.title, required this.icon, this.color = Colors.blue});
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(color: color ,borderRadius: const BorderRadius.all(Radius.circular(20))),
              child:  Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 20),
                      child: Icon(icon, color: Colors.white),
                    ),
                    Text(title, style: const TextStyle(color: Colors.white, fontSize: 30),),
                  ],
                ),
              ),
            );
  }
}

void main(){
  runApp(const MaterialApp(
    home: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HobbyCard(title: 'Hello1', icon: Icons.architecture, color: Colors.cyan,),
            HobbyCard(title: 'Hello2', icon: Icons.architecture_outlined, color: Colors.pink,),
            HobbyCard(title: 'Hello3', icon: Icons.architecture_rounded, color: Colors.red,),
            HobbyCard(title: 'Hello4', icon: Icons.architecture_sharp),
          ],
         ),
        ),
       ),
    ),
  );
}