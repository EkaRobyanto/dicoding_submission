import 'package:dicoding_submission/models/coffe_model.dart';
import 'package:dicoding_submission/const/property.dart';
import 'package:dicoding_submission/widgets/InformationCard.dart';
import 'package:flutter/material.dart';

class information extends StatelessWidget {
  const information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(
          "Confused? Dont worry we gotchu!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "What is ... ?",
                style: TextStyle(
                  color: dBrown,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) => InformationCard(
                    name: data[index].name,
                    pic: data[index].pic,
                    desc: data[index].desc,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
