import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({String note}) {
    final player = new AudioCache();
    player.play('$note.wav');
  }

  Expanded _buildKey({Color color, String noteName}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note: noteName);
        },
        child: null,
      ),
    );
  }

  _buildKey2({Color color, String noteName}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(note: noteName);
          },
          child: null,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation == Orientation.portrait
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildKey(
                            color: Colors.redAccent[400], noteName: 'note1'),
                        _buildKey(
                            color: Colors.blueAccent[400], noteName: 'note2'),
                        _buildKey(
                            color: Colors.yellowAccent[400], noteName: 'note3'),
                        _buildKey(
                            color: Colors.purpleAccent[400], noteName: 'note4'),
                        _buildKey(
                            color: Colors.indigoAccent[400], noteName: 'note5'),
                        _buildKey(
                            color: Colors.lightGreenAccent[400],
                            noteName: 'note6'),
                        _buildKey2(
                            color: Colors.orangeAccent[400], noteName: 'note7'),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildKey(
                            color: Colors.redAccent[400], noteName: 'note1'),
                        _buildKey(
                            color: Colors.blueAccent[400], noteName: 'note2'),
                        _buildKey(
                            color: Colors.yellowAccent[400], noteName: 'note3'),
                        _buildKey(
                            color: Colors.purpleAccent[400], noteName: 'note4'),
                        _buildKey(
                            color: Colors.indigoAccent[400], noteName: 'note5'),
                        _buildKey(
                            color: Colors.lightGreenAccent[400],
                            noteName: 'note6'),
                        _buildKey2(
                            color: Colors.orangeAccent[400], noteName: 'note7'),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
