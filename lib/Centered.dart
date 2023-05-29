import 'package:flutter/material.dart';
import 'dart:math';

class Centered extends StatefulWidget {
  const Centered({super.key});
  @override
  State<Centered> createState() {
    return _CenteredState();
  }
}

class _CenteredState extends State<Centered> {
  var imgesPhoto = 'assets/images/dice-1.png';

  void roll() {
    var rollDo = Random().nextInt(6) + 1;
    setState(() {
      imgesPhoto = 'assets/images/dice-$rollDo.png';
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imgesPhoto,
            width: 200,
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: roll,
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 200),
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 30,
              ),
            ),
            child: Text(
              'Click',
            ),
          )
        ],
      ),
    );
  }
}
