import 'package:flutter/material.dart';

class CardPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.brown,
        elevation: 9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 70),
              title: Text('Heart Shaker', style: TextStyle(color: Colors.white)),
              subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Edit', style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('Delete', style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}