import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_project/pages/login_page.dart';
import 'package:learning_project/utils/routes.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.HomeRoute: (context) => const HomePage(),
        MyRoutes.LoginRoute: (context) => const LoginPage(),
      },
    );
  }
}
