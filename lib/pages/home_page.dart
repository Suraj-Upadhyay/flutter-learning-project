import 'dart:convert';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:learning_project/models/catalog.dart';
import 'package:learning_project/widgets/my_themes.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final products = decodedData['products'];

    for (var items in products) {
      CatalogModel.items.add(Item.fromMap(items));
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Catalog App",
                  style: TextStyle(
                      color: MyThemes.darkBlueColor, fontWeight: FontWeight.bold),
                  textScaleFactor: 3,
                ),
                const Text(
                  "Trending Products",
                  textScaleFactor: 1.5,
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: CatalogModel.items.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(item: CatalogModel.items[index]);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
