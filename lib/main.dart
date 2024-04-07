import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //FUNCTIONS
    void playSound(int noteNumber) {
      final player = AudioPlayer();
      player.play(AssetSource('note$noteNumber.wav'));
    }

    Expanded pianoNote({Color color = Colors.redAccent, int noteNumber = 1}) {
      return Expanded(
        flex: 1,
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(0.0),
            ),
          ),
          onPressed: () {
            playSound(noteNumber);
          },
          child: Container(
            color: color,
          ),
        ),
      );
    }
    //END OF FUNCTIONS

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              pianoNote(color: Colors.redAccent, noteNumber: 1),
              pianoNote(color: Colors.orangeAccent, noteNumber: 2),
              pianoNote(color: Colors.yellowAccent, noteNumber: 3),
              pianoNote(color: Colors.greenAccent, noteNumber: 4),
              pianoNote(color: Colors.blueAccent, noteNumber: 5),
              pianoNote(color: Colors.indigoAccent, noteNumber: 6),
              pianoNote(color: Colors.deepPurpleAccent, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
