import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/utils/Product.dart';

class ListViewTarget extends StatelessWidget {
  const ListViewTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('NAMES LIST'),
          backgroundColor: GlobalColors.primaryColor,
          titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                products[index].image,
              ),
            ),
            title: Text(products[index].name),
            subtitle: Text(products[index].category),
          );
          /*return Card(
            child: ListTile(
              title: Text('Item $index'),
            ),
          );*/
        }
      ),
    );
  }
}