import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key, required this.isFavourite});

  final bool isFavourite;

  Color get isColor => isFavourite ? Colors.red : Colors.grey;
  IconData get isIcon => isFavourite ? Icons.favorite : Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration:const BoxDecoration(
                border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Title"),
                          SizedBox(height: 10,),
                          Text("This is the best widget"),
                        ],
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(isIcon, color: isColor,))
                ],
              ),
            );
  }
}

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: const Column(
          children: [
            FavoriteCard(isFavourite: true),
            FavoriteCard(isFavourite: false),
            FavoriteCard(isFavourite: true),
            FavoriteCard(isFavourite: false),
          ],
        ),
      ),
    ));
