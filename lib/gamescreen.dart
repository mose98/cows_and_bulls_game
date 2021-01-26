import 'package:cows_and_bulls/object/animatedwave.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  GameScreen({Key key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         child: Text("Game")
      ),
    );
  }
}