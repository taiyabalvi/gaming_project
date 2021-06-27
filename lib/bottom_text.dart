import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  BottomText({this.buttonText, this.normalText, this.onPressed});

  String buttonText;
  String normalText;
  Function onPressed;

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
          onTap: onPressed,
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
