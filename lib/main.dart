import 'dart:math' as math;

import 'package:flutter/material.dart';

const _whiteHex = 0xFFFFFFFF;
/// Get random color
Color getRandomColor() =>
    Color((math.Random().nextDouble() * _whiteHex).toInt()).withOpacity(1.0);

void main() {
  runApp(const SolidTest());
}

///Solid test task
// ignore: prefer_match_file_name
class SolidTest extends StatefulWidget {
  /// Constructor
  const SolidTest({super.key});

  @override
  State<SolidTest> createState() => _SolidTestState();
}

class _SolidTestState extends State<SolidTest> {
  Color _color = getRandomColor();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          setState(() {
            _color = getRandomColor();
          });
        },
        child: Scaffold(
          backgroundColor: _color,
          body: const Center(
            child: Text('Hello there!'),
          ),
        ),
      ),
    );
  }
}
