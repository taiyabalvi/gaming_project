import 'package:flutter/material.dart';
import 'package:game_project/input_card.dart';
import 'package:game_project/button_card.dart';
import 'package:game_project/bottom_text.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InputCard(
          icon: Icon(
            Icons.face,
          ),
          label: 'NAME',
        ),
        InputCard(
          icon: Icon(
            Icons.email,
          ),
          label: 'EMAIL',
        ),
        InputCard(
          icon: Icon(
            Icons.vpn_key,
          ),
          label: 'PASSWORD',
        ),
        InputCard(
          icon: Icon(
            Icons.contact_mail,
          ),
          label: 'COUNTRY',
        ),
        ButtonCard(
          text: 'SIGN UP',
          colour: Colors.blue,
        ),
        ButtonCard(
          icon: Icon(
            Icons.face,
          ),
          text: 'Sign up with Facebook!',
          colour: Colors.blueGrey,
        ),
        BottomText(
          normalText: 'Already',
          buttonText: 'Log In',
        ),
      ],
    );
  }
}
