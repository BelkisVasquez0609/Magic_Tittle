import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int number){
    final player = AudioPlayer();
    player.play((AssetSource('note$number.wav')));
  }
  //Metodo para crear los botones
  Widget buildButton(Color color, int sound) {
    return Expanded(
      child: TextButton(
        onPressed: () async{
          playSound(sound);
        },
        child: Text('Clic Me'),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(Colors.white,1),
              buildButton(Colors.red,2),
              buildButton(Colors.blue,3),
              buildButton(Colors.green,4),
              buildButton(Colors.teal,5),
              buildButton(Colors.lightBlue,6),
              buildButton(Colors.cyan,7),
            ],
          ),
        ),
      ),
    );
  }
}
