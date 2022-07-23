import 'package:dicoding_submission/const/property.dart';
import 'package:flutter/material.dart';

class detail_screen extends StatefulWidget {
  detail_screen({
    Key? key,
    required this.name,
    required this.pic,
    required this.desc,
  }) : super(key: key);

  final String pic;
  final String name;
  final String desc;
  bool isFavorite = false;

  @override
  State<detail_screen> createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isFavorite = !widget.isFavorite;
                        });
                      },
                      icon: widget.isFavorite
                          ? Icon(
                              Icons.star,
                              color: Colors.yellow,
                            )
                          : Icon(Icons.star_border),
                    )
                  ],
                ),
                Container(
                  height: 200,
                  width: 230,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage(widget.pic), fit: BoxFit.contain),
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
            widget.desc,
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
