import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

// ignore: non_constant_identifier_names
void PlaySound(int SoundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$SoundNumber.wav'));
}

// ignore: non_constant_identifier_names
Expanded BuildWidget(backgroundColor, SoundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: () {
        PlaySound(SoundNumber);
      },
      child: const Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildWidget(Colors.red, 1),
              BuildWidget(Colors.orange, 2),
              BuildWidget(Colors.yellow, 3),
              BuildWidget(Colors.green, 4),
              BuildWidget(Colors.blue, 5),
              BuildWidget(Colors.blue.shade800, 6),
              BuildWidget(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
