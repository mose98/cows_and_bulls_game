import 'dart:math';

import 'package:cows_and_bulls/gamescreen.dart';
import 'package:cows_and_bulls/object/animatedwave.dart';
import 'package:cows_and_bulls/object/fadeui.dart';
import 'package:flutter/material.dart';

import 'object/animatedbackground.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  onBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );

  onCenter(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.center,
      child: child,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            //FadeInUi(),
            Positioned.fill(child: AnimatedBackground()),
            onCenter(FadeInUi()),
            onBottom(AnimatedWave(
              height: 180,
              speed: 1.0,
            )),
            onBottom(AnimatedWave(
              height: 120,
              speed: 0.9,
              offset: pi,
            )),
            onBottom(AnimatedWave(
              height: 220,
              speed: 1.2,
              offset: pi / 2,
            )),
            Positioned.fill(child: Text("Cows and Bulls")),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

