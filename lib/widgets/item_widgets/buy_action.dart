import 'package:flutter/material.dart';
import '../my_themes.dart';
import 'buy_button.dart';

class BuyAction extends StatelessWidget {
  final num price;

  const BuyAction({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "\$${price}",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: MyThemes.darkBlueColor),
          textScaleFactor: 1.3,
        ),
        const BuyButton(),
      ],
    );
  }
}
