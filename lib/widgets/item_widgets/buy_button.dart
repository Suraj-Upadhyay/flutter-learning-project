import 'package:flutter/material.dart';

import '../my_themes.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                color: MyThemes.creamColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
