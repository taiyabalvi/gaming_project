import 'package:flutter/material.dart';
import 'package:game_project/input_card.dart';
import 'package:game_project/button_card.dart';
import 'package:game_project/bottom_text.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Cards(),
      ),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputCard(
            icon: Icon(
              Icons.email,
              size: 40.0,
            ),
            label: "EMAIL",
          ),
          SizedBox(
            height: 5.0,
          ),
          InputCard(
            icon: Icon(
              Icons.vpn_key,
              size: 40.0,
            ),
            label: "PASSWORD",
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forget Password?',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ButtonCard(
            text: "LOG IN",
            colour: Colors.lightBlueAccent.shade700,
          ),
          SizedBox(
            height: 50,
          ),
          ButtonCard(
            icon: Icon(
              Icons.face,
            ),
            text: "Log in with Facebook!",
            colour: Colors.blueGrey,
          ),
          SizedBox(
            height: 10,
          ),
          BottomText(
            normalText: 'Don\'t',
            buttonText: 'Sign Up',
          ),
        ],
      ),
    );
  }
}
