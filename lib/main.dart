import 'package:flutter/material.dart';
import 'package:flutter_first_version/pages/homepage.dart';
import 'package:flutter_first_version/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // removing the debug banner in development ( BECAUSE I DO NOT LIKE IT ON THE SCREEN 🙂 )
      debugShowCheckedModeBanner: false,

      // adjusting the theme mode as dark/light according to the system settings
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // adding primary font as some font from the google-font library
          fontFamily: GoogleFonts.acme().fontFamily,
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple, foregroundColor: Colors.white)),
      darkTheme: ThemeData(brightness: Brightness.dark, appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple)),

      // defining the initial-route for the application
      initialRoute: MyRoutes.homeRoute,

      // defining the routes for the application
      routes: {
        // defining the initial route for the app
        // "/": (context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        // defining the route for the login page
        "/login": (context) => LoginPage(),
      },
    );
  }
}