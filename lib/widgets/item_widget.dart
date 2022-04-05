import 'package:flutter/material.dart';
import 'package:learning_project/models/catalog.dart';
import 'package:learning_project/pages/home_detail_page.dart';
import 'package:learning_project/widgets/item_widgets/product_details.dart';

import 'item_widgets/my_image.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyListTile(item: item);
  }
}

class MyListTile extends StatelessWidget {
  final Item item;
  const MyListTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomeDetails(catalog: item))),
      child: Container(
        height: 140,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        padding: const EdgeInsets.fromLTRB(20, 15, 8, 15),
        child: Row(
          children: [
            Hero(
              tag: Key(item.id.toString()),
              child: MyImage(image: item.image),
            ),
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
              child: ProductDetails(
                  name: item.name, desc: item.desc, price: item.price),
            ))
          ],
        ),
      ),
    );
  }
}
