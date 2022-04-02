import 'package:flutter/material.dart';
import '../my_themes.dart';

class MyImage extends StatelessWidget {
  final String image;

  const MyImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(image),
      height: 130,
      width: 130,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          color: MyThemes.creamColor, borderRadius: BorderRadius.circular(15)),
    );
  }
}
