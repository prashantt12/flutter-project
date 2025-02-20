import 'package:flutter/material.dart';
import 'package:flutter_first_version/pages/homepage.dart';
import 'package:flutter_first_version/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // adjusting the theme mode as dark/light according to the system settings
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // adding primary font as some font from the google-font library
          fontFamily: GoogleFonts.acme().fontFamily,
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple, foregroundColor: Colors.white)),
      darkTheme: ThemeData(brightness: Brightness.dark),

      // defining the initial-route for the application
      initialRoute: "/",

      // defining the routes for the application
      routes: {
        // defining the initial route for the app
        "/": (context) => LoginPage(),
        "/home":(context) => HomePage(),
        // defining the route for the login page
        "/login": (context) => LoginPage(),
      },
    );
  }
}