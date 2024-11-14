import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

List<Widget> getLabels(){
  return colors.map((item) => Text(item)).toList();
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Label("Method 1: Loop in Array", bold: true),
            // TODO
            //this loop easy to read and add staff but also sometime might problem due to indexes go out of bounds.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Start"),
                for(var i = 0; i < colors.length; i++) Text('Item ${colors[i]}'),
                const Text("End")
              ],
            ),
            const Label("Method 2: Map", bold: true),
            // TODO
            //short and simple list it turn all the list into widget, look like advance code and clean, but problem is that it hard to using with complex logic.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Start"),
                ...colors.map((item) => Text(item)),
                const Text("End"),
              ],
            ),
            const Label("Method 23: Dedicated Function", bold: true),
            // TODO
            //good for reuse and keeping the code clean. but define list outside widget tree could affect the performance.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Start"),
                ...getLabels(),
                const Text("End"),
              ],
            )
          ],
        ),
      ),
    ),
  ));
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: (bold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
