import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylaphoneApp());
}

class XylaphoneApp extends StatelessWidget {
  const XylaphoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Colors.red),
          // ),
          onPressed: () {
            playSound(soundNumber!);
          },
          child: const Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.green, soundNumber: 1),
              buildKey(color: Colors.yellow, soundNumber: 2),
              buildKey(color: Colors.red, soundNumber: 3),
              buildKey(color: Colors.black, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
