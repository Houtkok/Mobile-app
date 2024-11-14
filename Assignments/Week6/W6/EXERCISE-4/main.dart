import 'package:flutter/material.dart';
import 'package:my_app/W6/EXERCISE-4/data/jokes.dart';
import 'package:my_app/W6/EXERCISE-4/model/jokes_model.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: const Column(
          children: [
              FavoriteCard()
          ],
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  int? _isFavorite;

  void setFavoriteClick(int index) {
    setState(() {
      _isFavorite = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: .5, color: Colors.grey),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Expanded(
              flex: 7,
              child: ListView.builder(
                itemCount: joke.length,
                itemBuilder: (context, i){
                  return JokeItem(joke: joke[i], isFavourite: _isFavorite == i, onFavoriteClick: () => setFavoriteClick(i));
                }
              ),
             ),
          ],
        ),
      ),
    );
  }
}

class JokeItem extends StatelessWidget {
  const JokeItem({super.key, required this.joke, required this.isFavourite, required this.onFavoriteClick});

  final Joke joke;
  final bool isFavourite;
  final VoidCallback onFavoriteClick;

  Color get isColor => isFavourite ? Colors.red : Colors.grey;
  IconData get isIcon => isFavourite ? Icons.favorite : Icons.favorite_border; 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(joke.title, style: TextStyle(color: appColor, fontWeight: FontWeight.w800),),
      subtitle: Text(joke.description),
      trailing: IconButton(onPressed: onFavoriteClick, icon: Icon(isIcon, color: isColor,)),
    );
  }
}
