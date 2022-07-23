// ignore_for_file: prefer_const_constructors

import 'package:dicoding_submission/screens/information-screen.dart';
import 'package:dicoding_submission/models/coffe_model.dart';
import 'package:dicoding_submission/models/store_model.dart';
import 'package:dicoding_submission/const/property.dart';
import 'package:dicoding_submission/views/mobile-view.dart';
import 'package:dicoding_submission/views/tablet-view.dart';
import 'package:dicoding_submission/views/web-view.dart';
import 'package:dicoding_submission/widgets/contentCard.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  bool get isTablet => MediaQuery.of(this).size.shortestSide > 600;

  bool get isPhone => MediaQuery.of(this).size.shortestSide < 600;
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size Msize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: bcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                color: white,
                width: Msize.width,
                height: 40,
                child: Center(
                  child: Text(
                    "Order Your Coffe!!",
                    style: TextStyle(
                      color: dBrown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MobileView(Msize: Msize);
          } else if (constraints.maxWidth < 900) {
            return TabletView(Msize: Msize);
          } else {
            return WebView(Msize: Msize);
          }
        },
      ),
    );
  }
}
