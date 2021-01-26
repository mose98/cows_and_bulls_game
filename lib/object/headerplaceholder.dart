import 'package:cows_and_bulls/gamescreen.dart';
import 'package:flutter/material.dart';

class HeaderPlaceholder extends StatelessWidget {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => GameScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.brown,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 60),
              title:
                  Text('BULLS AND COWS', style: TextStyle(color: Colors.white)),
              subtitle: Text('game', style: TextStyle(color: Colors.white)),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              label: Text(
                "PLAY",
                style: TextStyle(color: Colors.brown),
              ),
              icon: Icon(
                Icons.play_arrow,
                color: Colors.brown,
              ),
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
