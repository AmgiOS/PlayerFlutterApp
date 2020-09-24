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

  // Private Properties

  List<Music> songList = [
    Music("Theme Swift", "Codabee", "assets/un.jpg", "https://codabee.com/wp-content/uploads/2018/06/un.mp3"),
    Music("mets le shit dans l'ocb", "Eikichi", "assets/deux.jpg", "https://codabee.com/wp-content/uploads/2018/06/deux.mp3")
  ];

  Music currentMusic;
  double position = 0.0;

  // InitState

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
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black54
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                elevation: 10.0,
                margin: EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
                child: Image.asset(currentMusic.imagePath,
                    fit: BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: setText(currentMusic.title, 25.0),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: setText(currentMusic.artist, 17.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  setIconButton(Icons.fast_rewind, () {
                    print('rewind');
                  }),
                  setIconButton(Icons.play_arrow, () {
                    print('play');
                  }, iconSize: 80.0),
                  setIconButton(Icons.fast_forward, () {
                    print("forward");
                  }),
                ],
              ),
              Slider(
                value: 0.0,
                min: 0.0,
                max: 30.0,
                inactiveColor: Colors.white,
                activeColor: Colors.red,
                onChanged: (double d) {
                  setState(() {
                    position = d;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Public Methods
  Text setText(String title, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }

  IconButton setIconButton(IconData icon, VoidCallback onPressed ,{double iconSize = 24.0}) {
    return IconButton(
      icon: Icon(icon),
      color: Colors.white,
      iconSize: iconSize,
      onPressed: onPressed,
    );
  }
}