import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

  // const ItemWidget({super.key, required this.item});
  const ItemWidget({Key? key, required this.item}) : super(key: key); // constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}", 
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}