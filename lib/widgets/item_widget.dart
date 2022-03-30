import 'package:flutter/material.dart';
import 'package:learning_project/models/catalog.dart';
import 'package:learning_project/widgets/my_themes.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      padding: const EdgeInsets.fromLTRB(20, 15, 8, 15),
      child: Row(
        children: [
          Container(
            child: Image.network(item.image),
            height: 130,
            width: 130,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
                color: MyThemes.creamColor,
                borderRadius: BorderRadius.circular(15)),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: MyThemes.darkBlueColor),
                      textScaleFactor: 1.1,
                    ),
                    Text(
                      item.desc,
                      style: TextStyle(color: MyThemes.darkBlueColor),
                      textScaleFactor: 0.9,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${item.price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: MyThemes.darkBlueColor),
                      textScaleFactor: 1.3,
                    ),
                    InkWell(
                      onTap: () {
                        print("Clicked Buy");
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: MyThemes.darkBlueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(
                                color: MyThemes.creamColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
