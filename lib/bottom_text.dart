import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  BottomText({this.buttonText, this.normalText});

  String buttonText;
  String normalText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '$normalText have an account?',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            print("Pressed");
          },
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
