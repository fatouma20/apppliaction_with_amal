import 'package:apppliaction_with_amal/welcom.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'login.dart';
//import 'Home.dart';
//import 'dart:typed_data';
//import 'welcom.dart';
//import 'Company.dart';
//import 'Create.dart';
void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: '/',
    //routes: {
   //: (context) => const Login(),
    //'/second': (context) => const Home(),},
    home: welcom(),  );
  }
}