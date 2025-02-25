import 'package:flutter/material.dart';
import 'package:flutter_first_version/widgets/drawer.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  final int days = 30;
  final double doubleDays = 20;
  // "num" is a data type in DART that can take both integer and double as value input
  final num number1 = 20.11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.lightBlue,
        title: Text("Catalog App"),
        // centers the title for both ios and android
        centerTitle: true,
      ),
      body: Center(
        child: Text("This is the Home page."),
      ),

      drawer: MyDrawer(),
    );
  }
}