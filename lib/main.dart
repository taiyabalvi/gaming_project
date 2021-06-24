import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BackgroundImage(),
    ),
  );
}

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
          Card(
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                size: 40.0,
              ),
              title: Title(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: ListTile(
              leading: Icon(
                Icons.vpn_key,
                size: 40,
              ),
              title: Title(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
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
          Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 120),
            child: ListTile(
              tileColor: Colors.lightBlueAccent.shade700,
              title: Center(
                child: Text(
                  'LOG IN',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
            child: ListTile(
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.school),
              title: Text(
                'Log in with Facebook!',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class InputField extends StatelessWidget {
//   InputField({this.hintText, this.icon});
//
//   String hintText;
//   Icon icon;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       cursorColor: Colors.white,
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 25.0,
//       ),
//       decoration: InputDecoration(
//         icon: icon,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: Colors.white.withOpacity(0.8),
//           fontSize: 25.0,
//         ),
//       ),
//     );
//   }
// }
