// Start from the exercice 3 code
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final String title;
  final List<Color>? color;
  const CustomCard({super.key, required this.title, this.color = const [Colors.blue]});
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: color != null && color!.length == 1 ? color![0] : null,
              gradient: color != null && color!.length > 1 ? LinearGradient(colors: color!) : null,
            ),
            child: Center(
              child: Text(title,
                style: const TextStyle(color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          );
  }
}
void main() {
  runApp(MaterialApp(
    home: Container( 
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      child:  Column(
        children: [
          CustomCard(title: 'OOP', color: [Colors.blue[100]!]),
          CustomCard(title: 'DART', color: [Colors.blue[300]!]),
          CustomCard(title: 'FLUTTER', color: [Colors.blue[600]!]),
          const CustomCard(title: 'Hola'),
        ],
      ),
    ),
  ));
}
