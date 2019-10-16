import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          // print lucky number here from
          // generateLuckyNumber():String function
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);

    return "Your lucky number is $luckyNumber";
  }
}
