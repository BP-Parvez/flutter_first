// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Animation_first extends StatefulWidget {
  const Animation_first({Key? key}) : super(key: key);

  @override
  State<Animation_first> createState() => _Animation_firstState();
}

class _Animation_firstState extends State<Animation_first> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
          child: AnimatedAlign(
        alignment: selected ? Alignment.center : Alignment.centerLeft,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        child: Text('Hello flutter'),
      )),
    );
  }
}
