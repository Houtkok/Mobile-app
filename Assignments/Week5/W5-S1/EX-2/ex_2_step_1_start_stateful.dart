import 'package:flutter/material.dart';

class FavouriteCard extends StatefulWidget {
  const FavouriteCard({super.key,});
  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
  bool isFavourite = false;

  Color get isColor => isFavourite ? Colors.red : Colors.grey;
  IconData get isIcon => isFavourite ? Icons.favorite : Icons.favorite_border;

  void switchFavourite(){
    setState(() {
      isFavourite = !isFavourite;
    });
  }

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
                          Text("Title", style: TextStyle(color: Colors.cyan, fontSize: 20),),
                          SizedBox(height: 10,),
                          Text("This is the best widget"),
                        ],
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){ switchFavourite(); }, icon: Icon(isIcon, color: isColor,))
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
            FavouriteCard(),
            FavouriteCard(),
            FavouriteCard(),
            FavouriteCard(),
          ],
        ),
      ),
    ));
