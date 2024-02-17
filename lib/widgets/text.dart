import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final String type;

  final Map<String, double> sizes = {
    "title": 24.2,
    "sub_title": 54.2,
    "header": 54.2,
    "normal": 54.2
  };

  // final List<Map<String, double>> sizes = [
  //   {"title": 54.2},
  //   {"sub_title": 54.2},
  //   {"header": 54.2},
  //   {"normal": 54.2},
  // ];

  MyText({Key? key, required this.text, this.type = "title"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      color: Colors.cyan[900],
      fontSize: sizes[type],
    );

    return Text(
      text,
      style: style,
    );
  }
}
