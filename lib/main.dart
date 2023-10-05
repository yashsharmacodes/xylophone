import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Myapp());
}

final player = AudioPlayer();

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xylophone',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: const Painted(),
    );
  }
}

Container c(Color colour, int soundnum) {
  return Container(
      color: colour,
      child: GestureDetector(
        onTap: () {
          player.play(AssetSource('note$soundnum.wav'));
        },
      ));
}

class Painted extends StatefulWidget {
  const Painted({super.key});

  @override
  State<Painted> createState() => _PaintedState();
}

class _PaintedState extends State<Painted> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: GestureDetector(
                onTap: () {
                  player.play(AssetSource('note1.wav'));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: c(Colors.black, 2),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              color: Colors.redAccent[400],
              child: GestureDetector(
                onTap: () {
                  player.play(AssetSource('note3.wav'));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              color: Colors.deepOrange,
              child: GestureDetector(
                onTap: () {
                  player.play(AssetSource('note4.wav'));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  player.play(AssetSource('note5.wav'));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: GestureDetector(
                onTap: () {
                  player.play(AssetSource('note6.wav'));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: GestureDetector(
                onTap: () {
                  player.play(AssetSource('note7.wav'));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
