import 'package:dicoding_submission/const/property.dart';
import 'package:flutter/material.dart';

class stores {
  String name;
  String pic;

  stores({required this.name, required this.pic});
}

List<stores> store = [
  stores(name: "Starbucks", pic: starbucks),
  stores(name: "Fore", pic: fore),
  stores(name: "J.Co", pic: jco),
  stores(name: "Excelso", pic: excelso),
  stores(name: "Dunkin' Donuts", pic: dunkin),
];
