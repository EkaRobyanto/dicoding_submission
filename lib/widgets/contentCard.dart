import 'package:dicoding_submission/const/property.dart';
import 'package:flutter/material.dart';

class RectangleCard extends StatelessWidget {
  const RectangleCard({
    Key? key,
    required this.pic,
    required this.name,
  }) : super(key: key);

  final String pic;
  final name;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 100,
        height: 100,
        color: bcolor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: dBrown,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(pic),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: dBrown,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    Key? key,
    required this.pic,
    required this.name,
  }) : super(key: key);

  final String pic;
  final name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(180),
          child: Container(
            width: MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.width / 8,
            decoration: BoxDecoration(
                color: bcolor,
                image: DecorationImage(
                    image: AssetImage(pic), fit: BoxFit.fitHeight)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 17),
        )
      ],
    );
  }
}
