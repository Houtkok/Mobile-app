import 'package:flutter/material.dart';
import 'package:my_app/W6/BONUS/screen/temperature.dart';
import 'package:my_app/W6/BONUS/screen/welcome.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  
  bool showWelcome = true;

  void switchScreen(){
    setState(() {
      showWelcome = !showWelcome;
    });
  }

  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: showWelcome ? Welcome(onStartPressed : switchScreen) : Temperature(onStartPressed : switchScreen),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
