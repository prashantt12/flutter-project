import 'package:flutter/material.dart';
import 'package:flutter_first_version/pages/homepage.dart';
import 'package:flutter_first_version/pages/loginpage.dart';
import 'package:flutter_first_version/widgets/themes.dart';

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
      themeMode:
          ThemeMode
              .light, // adjusting the theme mode as dark/light according to the system settings
      theme: MyTheme.lightTheme, //calling light theme from themes widget
      darkTheme: MyTheme.darkTheme, //calling dark theme from themes widget

      debugShowCheckedModeBanner:
          false, // removing the debug banner in development ( BECAUSE I DO NOT LIKE IT ON THE SCREEN 🙂 )

      initialRoute:
          MyRoutes.homeRoute, // defining the initial-route for the application

      routes: {
        // defining the routes for the application
        // defining the initial route for the app
        // "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // defining the route for the login page
        "/login": (context) => LoginPage(),
      },
    );
  }
}
