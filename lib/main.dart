import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  void playNote1({TapDownDetails x}) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Widget soundButton({Color buttonColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        splashColor: null,
        padding: EdgeInsets.all(0),
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        color: buttonColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(buttonColor: Colors.red, soundNumber: 1),
              soundButton(buttonColor: Colors.orange, soundNumber: 2),
              soundButton(buttonColor: Colors.yellow, soundNumber: 3),
              soundButton(buttonColor: Colors.green, soundNumber: 4),
              soundButton(buttonColor: Colors.blue, soundNumber: 5),
              soundButton(buttonColor: Colors.indigo, soundNumber: 6),
              soundButton(buttonColor: Colors.deepPurpleAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
