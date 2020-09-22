import 'package:flutter/material.dart';

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
        backgroundColor: Colors.black54,
        centerTitle: false,
      ),
    );
  }
}