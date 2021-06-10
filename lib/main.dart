import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color colors) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colors,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Padding(
          padding: EdgeInsets.all(5.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.cyanAccent),
              buildKey(2, Colors.brown),
              buildKey(3, Colors.purpleAccent),
              buildKey(4, Colors.pinkAccent),
              buildKey(5, Colors.lightGreen),
              buildKey(6, Colors.deepOrangeAccent),
              buildKey(7, Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
