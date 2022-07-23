import 'package:flutter/material.dart';

const String fontTitle = "Yellow Ginger";
const String fontBody = "Montserrat";
const Color mainColor = Colors.brown;
Color? bcolor = Colors.brown[300];
Color white = Colors.white;
Color? dBrown = Colors.brown[700];
double dElevation = 26;

extension StringExtension on String {
  String get png => 'assets/images/$this.png';
}

//coffe
String espresso = 'espresso'.png;
String cappucino = 'Cappucino'.png;
String latte = 'Latte'.png;
String flatWhite = 'flatwhite'.png;
String americano = 'americano'.png;
String frappucino = 'frappucino'.png;

//stores
String starbucks = 'starbucks'.png;
String fore = 'fore'.png;
String jco = 'jco'.png;
String excelso = 'excelso'.png;
String dunkin = 'dunkin'.png;
