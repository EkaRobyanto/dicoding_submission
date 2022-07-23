import 'package:dicoding_submission/screens/home-screen.dart';
import 'package:dicoding_submission/screens/information-screen.dart';
import 'package:dicoding_submission/const/property.dart';
import 'package:dicoding_submission/screens/information-screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/information': (context) => information(),
      },
      theme: ThemeData(fontFamily: fontBody),
      debugShowCheckedModeBanner: false,
      title: "Coffe App",
    );
  }
}
