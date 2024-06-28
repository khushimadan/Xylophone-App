import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void PlaySound(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded BuildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          PlaySound(soundNumber);
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(0),
          ),
        ),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              BuildKey(soundNumber: 1, color: Colors.red),
              BuildKey(soundNumber: 2, color: Colors.orange),
              BuildKey(soundNumber: 3, color: Colors.yellow),
              BuildKey(soundNumber: 4, color: Colors.green),
              BuildKey(soundNumber: 5, color: Colors.blue),
              BuildKey(soundNumber: 6, color: Colors.indigo),
              BuildKey(soundNumber: 7, color: Colors.purple.shade900),
            ],
          ),
        ),
      ),
    );
  }
}
