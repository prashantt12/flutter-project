import 'package:flutter/material.dart';
import 'package:flutter_first_version/models/catalog.dart';
import 'package:flutter_first_version/widgets/drawer.dart';
import 'package:flutter_first_version/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final double doubleDays = 20;
  final num number1 =
      20.11; // "num" is a data type in DART that can take both integer and double as value inpu

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      50,
      (index) => CatalogModel.items[0],
    ); //generating a dummy list of the single item i have in CatalogModel
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true, // centers the title for both ios and android
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Scrollbar(
          thumbVisibility: true,
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummyList[index]);
            },
          ),
        ),
      ),

      drawer: MyDrawer(),
    );
  }
}
