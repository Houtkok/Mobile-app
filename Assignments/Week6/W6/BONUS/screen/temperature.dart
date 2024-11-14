import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key, required this.onStartPressed});
  final VoidCallback onStartPressed;

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final inputValue = TextEditingController();
  late double fahrenheit;
  late double celsius;

  void convertFahrenheit() {
    setState(() {
    celsius = double.parse(inputValue.text);
    fahrenheit = (celsius * 9 / 5) + 32;
    });
  }

  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  final InputDecoration inputDecoration = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 1.0),
        borderRadius: BorderRadius.circular(12),
      ),
      hintText: 'Enter a temperature',
      hintStyle: const TextStyle(color: Colors.white));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.thermostat_outlined,
            size: 120,
            color: Colors.white,
          ),
          const Center(
            child: Text(
              "Converter",
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
          ),
          const SizedBox(height: 50),
          const Text("Temperature in Degrees:"),
          const SizedBox(height: 10),
          TextField(
              decoration: inputDecoration,
              style: const TextStyle(color: Colors.white),
              controller: inputValue,
              ),
          const SizedBox(height: 30),
          const Text("Temperature in Fahrenheit:"),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: textDecoration,
            child: Text(inputValue.text.isEmpty ? '' : fahrenheit.toString(), style: const TextStyle(color: Colors.black, fontSize: 20))
            ),
          const SizedBox(height: 10),
          Container(
              decoration: textDecoration,
              child: ElevatedButton(onPressed: convertFahrenheit, child: const Text('Convert'))),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: widget.onStartPressed, child:const Text('Back')),
        ],
      )),
    );
  }
}
