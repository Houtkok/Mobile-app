import 'package:flutter/material.dart';

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});
  
  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  bool isSelected = false;

  Color get buttonBG => isSelected ? Colors.blue[500]!:Colors.blue[50]!;
  String get buttonText => isSelected ? "Selected" : "Not Selected";
  Color get textColor => isSelected ? Colors.white : Colors.black;
  
  void switchColor(){
    setState(() {
      isSelected = !isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                    onPressed: switchColor,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBG,
                    ),
                    child: Center(
                      child: Text(buttonText,
                      style: buttonBG == Colors.blue[50] ? const TextStyle(color: Colors.black) : const TextStyle(color: Colors.white),
                      ),
                    )),
              );
  }
}

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectionButton(),
              SelectionButton(),
              SelectionButton(),
              SelectionButton(),
            ],
          )
              
        ),
      ),
    ));
