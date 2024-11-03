import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.icon,
      this.iconPosition = IconPosition.left,
      this.buttonType = ButtonType.primary});

  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    switch (buttonType) {
      case ButtonType.primary:
        buttonColor = Colors.blue;
        break;
      case ButtonType.secondary:
        buttonColor = Colors.green;
        break;
      case ButtonType.disabled:
      default:
        buttonColor = Colors.grey;
        break;
    }

    return Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        color: buttonColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPosition == IconPosition.left) 
              Padding(padding: const EdgeInsets.all(5), child: Icon(icon),),
            Padding(padding: const EdgeInsets.all(5), child: Text(label),),
            if (iconPosition == IconPosition.right) 
              Padding(padding: const EdgeInsets.all(5), child: Icon(icon),),
          ],
        )
        ),
        );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CustomButton(label: 'Submit', icon: Icons.check ,buttonType: ButtonType.primary,),
            CustomButton(label: 'Time', icon: Icons.access_time,iconPosition: IconPosition.right,buttonType: ButtonType.secondary,),
            CustomButton(label: 'Account', icon: Icons.account_tree_sharp,iconPosition: IconPosition.right,buttonType: ButtonType.disabled,)
          ],
        ),
      ),
    ),
  ));
}
