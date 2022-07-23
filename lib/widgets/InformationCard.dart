import 'package:dicoding_submission/screens/detail-screen.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    required this.name,
    required this.pic,
    required this.desc,
    Key? key,
  }) : super(key: key);

  final String pic;
  final String name;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: Image.asset(pic, alignment: Alignment.center),
          title: Text(
            name,
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detail_screen(
                name: this.name,
                pic: this.pic,
                desc: this.desc,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
