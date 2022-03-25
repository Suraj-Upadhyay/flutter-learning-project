import "package:flutter/material.dart";
import 'package:learning_project/pages/login_page.dart';
import 'package:learning_project/utils/routes.dart';
import 'package:learning_project/widgets/my_themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme(),
      darkTheme: MyThemes.darkTheme(),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.HomeRoute: (context) => const HomePage(),
        MyRoutes.LoginRoute: (context) => const LoginPage(),
      },
    );
  }
}
