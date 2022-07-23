import 'package:dicoding_submission/const/property.dart';
import 'package:flutter/material.dart';

class category {
  String name;
  String pic;
  String desc;
  bool isFavorite = false;

  category(
      {required isFavorite,
      required this.name,
      required this.pic,
      required this.desc});
}

List<category> _data = [
  category(
    name: "Espresso",
    pic: espresso,
    desc:
        "Espresso is a coffee-brewing method of Italian origin, in which a small amount of nearly boiling water is forced under 9–10 bars of pressure through finely-ground coffee beans. Espresso coffee can be made with a wide variety of coffee beans and roast degrees.",
    isFavorite: false,
  ),
  category(
      name: "Cappucino",
      pic: cappucino,
      isFavorite: false,
      desc:
          "A cappuccino is an espresso-based coffee drink that originated in Austria with later development taking place in Italy, and is prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon or chocolate powder."),
  category(
      name: "Caffe' Latte",
      pic: latte,
      isFavorite: false,
      desc:
          "Caffè latte, often shortened to just latte in English, is a coffee beverage of Italian origin made with espresso and steamed milk"),
  category(
      name: "Flat White",
      pic: flatWhite,
      isFavorite: false,
      desc:
          "The flat white coffee is an espresso-based coffee drink accompanied with steamed milk and microfoam. This microfoam is made up of steamed milk which is gently infused with air. This results in silky, textured milk containing tiny air bubbles."),
  category(
      name: "Americano",
      pic: americano,
      isFavorite: false,
      desc:
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. Its strength varies with the number of shots of espresso and amount of water added."),
  category(
      name: "Frappucino",
      pic: frappucino,
      isFavorite: false,
      desc:
          "Frappuccino is a line of blended iced coffee drinks sold by Starbucks. It consists of coffee or crème base, blended with ice and ingredients such as flavored syrups and usually topped with whipped cream and or spices."),
];

List<category> get data => [..._data];
