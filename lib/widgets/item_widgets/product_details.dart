import 'package:flutter/material.dart';
import 'package:learning_project/widgets/item_widgets/buy_action.dart';
import 'package:learning_project/widgets/item_widgets/product_text.dart';

class ProductDetails extends StatelessWidget {
  final String name;
  final String desc;
  final num price;
  const ProductDetails(
      {Key? key, required this.name, required this.desc, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductText(name: name, desc: desc),
        BuyAction(price: price),
      ],
    );
  }
}

