import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  ButtonCard({this.icon, @required this.text, this.colour});

  Icon icon;
  String text;
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 82),
      child: ListTile(
        tileColor: colour,
        leading: icon,
        title: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
