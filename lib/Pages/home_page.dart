import 'package:flutter/material.dart';
import 'package:login_app/models/catalog.dart';
import 'package:login_app/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          }
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
