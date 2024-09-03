import 'package:flutter/material.dart';
import 'package:game_library/gamepage.dart';
import 'package:game_library/home.dart';
import 'package:game_library/library.dart';
import 'package:game_library/login.dart';
import 'package:game_library/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}
