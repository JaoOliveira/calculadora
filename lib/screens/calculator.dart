import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/Display.dart';
import '../components/keyboard.dart';

class calculator extends StatefulWidget {
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  final Memoria memoria = Memoria();
  _onPressed(String command) {
    setState(() {
      memoria.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Column(
        children: [
          Display(memoria.value),
          keyboard(_onPressed),
        ],
      ),
    );
  }
}
