import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({this.icon, this.label});

  Icon icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: ListTile(
        leading: icon,
        title: Title(
          color: Colors.white,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
