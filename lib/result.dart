// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "You Did it!!!",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Arial',
        ),
      ),
    );
  }
}
