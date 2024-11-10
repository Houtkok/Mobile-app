import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];
class SlideButton extends StatefulWidget {
  const SlideButton({super.key});

  @override
  State<SlideButton> createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton> {
  int currentImage = 0;

  void nextImage(){
    setState(() {
      currentImage = (currentImage + 1) % images.length;
    });
  }

  void prevImage(){
    setState(() {
      currentImage = (currentImage - 1 + images.length) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: prevImage,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: nextImage,
              ),
            ),
          ],
        ),
        body: Image.asset(images[currentImage]),
      );
  }
}

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, 
      // Why this line ? Can you explain it ?
      // This is a propety of MaterialApp that show small label debug(true by default) it for developer to make sure it is debug or release.
      home: SlideButton(),
    ));
