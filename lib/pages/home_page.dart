import 'dart:convert';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:learning_project/models/catalog.dart';
import 'package:learning_project/widgets/drawer.dart';
// import '../widgets/item_widget.dart';

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
      appBar: AppBar(
        title: const Text("Learning App"),
      ),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items.isNotEmpty)
              ? Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final item = CatalogModel.items[index];
                      return GridTile(
                        header: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                            child: Text(
                              item.name,
                              style: const TextStyle(color: Colors.white),
                            )),
                        child: Image.network(item.image),
                        footer: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.black,
                            child: Text("${item.price}",
                                style: const TextStyle(color: Colors.white))),
                      );
                    },
                    itemCount: CatalogModel.items.length,
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
