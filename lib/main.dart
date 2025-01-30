import 'package:flutter/material.dart';

// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(
    int noteNum,
  ) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey({required Color color, required int noteNum}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: () {
          playSound(noteNum);
        },
        child: Text(' '),
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
            children: <Widget>[
              buildKey(
                color: Colors.red,
                noteNum: 1,
              ),
              buildKey(
                color: Colors.orange,
                noteNum: 2,
              ),
              buildKey(
                color: Colors.yellow,
                noteNum: 3,
              ),
              buildKey(
                color: Colors.green,
                noteNum: 4,
              ),
              buildKey(
                color: Colors.teal,
                noteNum: 5,
              ),
              buildKey(
                color: Colors.blue,
                noteNum: 6,
              ),
              buildKey(
                color: Colors.purple,
                noteNum: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
