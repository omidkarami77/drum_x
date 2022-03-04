import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
debugShowCheckedModeBanner: false,
    home: Scaffold(
    backgroundColor:Colors.amber,
      appBar: AppBar(
        title: Center(
          child: Text(
            'drum',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('images/drum.png'),
            )),
            child: getBody()),
      ),
    ),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      soundPlay('c1.wav');
                    },
                    child: Text(''))),
            Expanded(child: TextButton(onPressed: () {
              soundPlay('c2.wav');
            }, child: Text(''))),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: TextButton(onPressed: () {
              soundPlay('h1.wav');
            }, child: Text(''))),
            Expanded(child: TextButton(onPressed: () {
              soundPlay('h2.wav');
            }, child: Text(''))),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: TextButton(onPressed: () {
              soundPlay('k1.wav');
            }, child: Text(''))),
            Expanded(child: TextButton(onPressed: () {
              soundPlay('k2.wav');
            }, child: Text(''))),
          ],
        ),
      )
    ],
  );
}

void soundPlay(String fileName) {
   var player = AudioCache();
  player.play(fileName);
}
