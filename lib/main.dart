import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  void changeDiceFace(){
    setState(() {
      leftDice= Random().nextInt(6)+1;
      rightDice= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(child: Image.asset('images/dice$leftDice.png'),
              onPressed: () {
                changeDiceFace();
                print("Left Dice Number = $leftDice");
              },),
          ),
          Expanded(
            child: TextButton(child: Image.asset('images/dice$rightDice.png'),
              onPressed: () {
                changeDiceFace();
                print("Right Dice Number = $leftDice");
              },),
          ),
        ],
      ),
    );
  }
}
