import 'package:flutter/material.dart';
import 'package:flutter_first_version/pages/homepage.dart';
import 'package:flutter_first_version/pages/login_page.dart';
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
      theme: ThemeData(primarySwatch: Colors.deepPurple,
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple, foregroundColor: Colors.white)),
      darkTheme: ThemeData(brightness: Brightness.dark),

      // defining the inital route for the application
      initialRoute: "/home",
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