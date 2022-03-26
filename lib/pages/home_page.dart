import 'dart:convert';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:learning_project/models/catalog.dart';
import 'package:learning_project/widgets/drawer.dart';
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
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
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
          child: (CatalogModel.items.isNotEmpty) ? ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(item: CatalogModel.items[index]);
            },
          ) : const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
