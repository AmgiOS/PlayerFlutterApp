import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                child: Text(
                  "Intro Swift Course",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Text(
                  "AmgIndustries",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
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
                    icon: Icon(Icons.skip_next),
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
                  mouseCursor: MouseCursor.defer,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}