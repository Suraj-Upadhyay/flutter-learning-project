import 'package:flutter/material.dart';
import 'package:learning_project/widgets/item_widgets/buy_action.dart';
import 'package:learning_project/widgets/my_themes.dart';

import '../models/catalog.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyThemes.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              color: MyThemes.creamColor,
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ),
            ),
            Expanded(
              child: Container(
                color: MyThemes.creamColor,
                child: ClipPath(
                  clipper: MyArcClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: ProductDetail(
                      catalog: catalog,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(size.width / 2, size.height / 6, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ProductDetail extends StatelessWidget {
  final Item catalog;
  const ProductDetail({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  catalog.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textScaleFactor: 1.9,
                ),
                Text(
                  catalog.desc,
                  textScaleFactor: 1.3,
                ),
              ],
            ),
            BuyAction(price: catalog.price)
          ],
        ),
      ),
    );
  }
}
