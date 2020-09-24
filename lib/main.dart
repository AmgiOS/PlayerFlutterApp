import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:player_flutter/Music.dart';

void main() {
  runApp(PlayerHome());
}

class PlayerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Player',
      debugShowCheckedModeBanner: false,
      home: Player(),
    );
  }
}

class Player extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Player();
  }
}

class _Player extends State<Player> {

  // Properties

  List<Music> songList = [
    Music("Theme Swift", "Codabee", "assets/un.jpg", "https://codabee.com/wp-content/uploads/2018/06/un.mp3"),
    Music("Second Theme", "Eikichi", "assets/deux.jpg", "https://codabee.com/wp-content/uploads/2018/06/deux.mp3")
  ];

  Music currentMusic;

  @override
  void initState() {
    super.initState();
    currentMusic = songList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player Music"),
        backgroundColor: Colors.black87,
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black54
        ),
        child: Center(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                elevation: 10.0,
                margin: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                child: Image.asset('assets/un.jpg',
                    fit: BoxFit.fitHeight),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: setText(currentMusic.title, 25.0),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: setText(currentMusic.artist, 17.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.fast_rewind),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    iconSize: 80.0,
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.fast_forward),
                    onPressed: () {

                    },
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Slider(
                  value: 0.0,
                  max: 100.0,
                  mouseCursor: MouseCursor.defer, onChanged: (double value) {

                },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text setText(String title, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }
}