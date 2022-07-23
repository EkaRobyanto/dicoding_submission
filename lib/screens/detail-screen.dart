import 'package:dicoding_submission/const/property.dart';
import 'package:flutter/material.dart';

class detail_screen extends StatelessWidget {
  const detail_screen({
    Key? key,
    required this.name,
    required this.pic,
    required this.desc,
  }) : super(key: key);

  final String pic;
  final String name;
  final String desc;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: bcolor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          toolbarHeight: 250,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
          elevation: 0,
          backgroundColor: mainColor,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 200,
                  width: 230,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage(pic), fit: BoxFit.contain),
                  ),
                )
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            desc,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: dBrown,
            ),
          ),
        ),
      );
}
