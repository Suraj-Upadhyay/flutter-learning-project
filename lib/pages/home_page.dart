import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Suraj";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning App"),
      ),
      body: const Material(
        child: Center(
          child: Text("Welcome $name to $days days of flutter"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
