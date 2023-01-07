import 'package:facebooklogin/screen/Login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(facebookApp());
}

class facebookApp extends StatelessWidget {
  const facebookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "NNV Coders Login Page",
      home: LoginPage(),
    );
  }
}
