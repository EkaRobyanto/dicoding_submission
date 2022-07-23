import 'package:dicoding_submission/models/coffe_model.dart';
import 'package:dicoding_submission/models/store_model.dart';
import 'package:dicoding_submission/const/property.dart';
import 'package:dicoding_submission/widgets/contentCard.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
    required this.Msize,
  }) : super(key: key);

  final Size Msize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: dElevation,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: Msize.width,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.coffee_maker_outlined,
                        size: 70,
                        color: dBrown,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Eka!",
                            style: TextStyle(
                              fontFamily: fontTitle,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: dBrown,
                            ),
                          ),
                          Text(
                            "What coffe you want for today?",
                            style: TextStyle(
                              fontFamily: fontTitle,
                              color: dBrown,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    "Coffees",
                    style: TextStyle(
                      fontFamily: fontBody,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/information');
                    },
                    icon: Icon(Icons.help_outline_outlined),
                    color: white,
                    iconSize: 35,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Card(
                  elevation: dElevation,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                    ),
                    padding: const EdgeInsets.all(15),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return RectangleCard(
                          pic: data[index].pic,
                          name: data[index].name,
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Stores",
                style: TextStyle(
                  fontFamily: fontBody,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: dElevation,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                    addAutomaticKeepAlives: true,
                    shrinkWrap: true,
                    itemCount: store.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: RectangleCard(
                          pic: store[index].pic, name: store[index].name),
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
