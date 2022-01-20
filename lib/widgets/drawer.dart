// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final String imageUrl =
      "https://pbs.twimg.com/profile_images/1377531663459049473/90Oy7Se-_400x400.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Suraj Upadhyay"),
              accountEmail: Text("suraj@upadyay.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.white,
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings),
              iconColor: Colors.white,
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
