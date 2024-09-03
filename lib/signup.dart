import 'package:flutter/material.dart';
import 'package:game_library/home.dart';

class SignUp extends StatelessWidget {
  final double fontSize;
  final double textFieldHeight;
  final double textFieldWidth;

  SignUp({
    this.fontSize = 16,
    this.textFieldHeight = 50,
    this.textFieldWidth = 250,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(100.0),
    child: Column(
    children: [
    SizedBox(height: 50),
    Center(
    child: Text(
    'Register',
    style: TextStyle(
    fontFamily: 'Chakra Petch',
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    SizedBox(height: 20),
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    buildFeatureRow(
    icon: Icons.check,
    text: 'Discover new games',
    ),
    SizedBox(height: 50),
    buildFeatureRow(
    icon: Icons.check,
    text: 'Discover recommended games',
    ),
    SizedBox(height: 50),
    buildFeatureRow(
    icon: Icons.check,
    text: 'A game world like never before',
    ),
    ],
    ),
    ),
    ),
    Container(
    width: 1,
    height: 300,
    color: Colors.orange,
    ),
    Expanded(
    child: Padding(
    padding: EdgeInsets.all(25.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(
    height: textFieldHeight,
    width: textFieldWidth,
    child: TextField(
    style: TextStyle(
    fontFamily: 'Chakra Petch',
    fontSize: fontSize,
    color: Colors.white,
    ),
    decoration: InputDecoration(
    labelText: 'Username',
    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(
    fontFamily: 'Chakra Petch',
    color: Colors.grey.withOpacity(0.7),
    fontSize: fontSize,
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white.withOpacity(0.7),
    ),
    ),
    ),
    ),
    ),
    SizedBox(height: 10),
    SizedBox(
    height: textFieldHeight,
    width: textFieldWidth,
    child: TextField(
    style: TextStyle(
    fontFamily: 'Chakra Petch',
    fontSize: fontSize,
    color: Colors.white,
    ),
    decoration: InputDecoration(
    labelText: 'Email',
    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(
    fontFamily: 'Chakra Petch',
    color: Colors.grey.withOpacity(0.7),
    fontSize: fontSize,
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white.withOpacity(0.7),
    ),
    ),
    ),
    ),
    ),
    SizedBox(height: 10),
    SizedBox(
    height: textFieldHeight,
    width: textFieldWidth,
    child: TextField(
    style: TextStyle(
    fontFamily: 'Chakra Petch',
    fontSize: fontSize,
    color: Colors.white,
    ),
    decoration: InputDecoration(
    labelText: 'Password',
    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(
    fontFamily: 'Chakra Petch',
    color: Colors.grey.withOpacity(
        0.7),
    ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.7),
        ),
      ),
    ),
    ),
    ),
      SizedBox(height: 10),
      SizedBox(
        height: textFieldHeight,
        width: textFieldWidth,
        child: TextField(
          style: TextStyle(
            fontFamily: 'Chakra Petch',
            fontSize: fontSize,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            filled: true,
            fillColor: Colors.white,
            labelStyle: TextStyle(
              fontFamily: 'Chakra Petch',
              color: Colors.grey.withOpacity(0.7),
              fontSize: fontSize,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20.0),
      Container(
        width: 200,
        child: ElevatedButton(
          onPressed: () {

            // Navigate to the home page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Register',
              style: TextStyle(
                fontFamily: 'Chakra Petch',
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    ],
    ),
    ),
    ),
    ],
    ),
    ],
    ),
        ),
        ),
    );
  }

  Widget buildFeatureRow({required IconData icon, required String text}) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Chakra Petch',
            color: Colors.orange,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
