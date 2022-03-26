// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:learning_project/models/catalog.dart';
import 'package:learning_project/widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, ((index) => CatalogModel.items));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning App"),
      ),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(item: dummyList[index][0]);
            },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
