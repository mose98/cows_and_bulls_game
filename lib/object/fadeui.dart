import 'package:cows_and_bulls/object/cardplaceholder.dart';
import 'package:cows_and_bulls/object/headerplaceholder.dart';
import 'package:flutter/material.dart';

import 'fadein.dart';

class FadeInUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FadeIn(2, HeaderPlaceholder()),
            FadeIn(3, CardPlaceholder()),
            FadeIn(3.33, CardPlaceholder()),
            FadeIn(3.66, CardPlaceholder())
          ],
        ),
      ),
    );
  }
}
