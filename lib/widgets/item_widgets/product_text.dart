import 'package:flutter/material.dart';

import '../my_themes.dart';

class ProductText extends StatelessWidget {
  final String name;
  final String desc;

  const ProductText({Key? key, required this.name, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: MyThemes.darkBlueColor),
          textScaleFactor: 1.1,
        ),
        Text(
          desc,
          style: TextStyle(color: MyThemes.darkBlueColor),
          textScaleFactor: 0.9,
        ),
      ],
    );
  }
}
