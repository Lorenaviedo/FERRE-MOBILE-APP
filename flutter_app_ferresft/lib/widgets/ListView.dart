import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/class/Product.dart';

class ListViewTarget extends StatelessWidget {
  const ListViewTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NAMES LIST'),
        backgroundColor: GlobalColors.primaryColor,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  productList[index].image,
                ),
              ),
              title: Text(productList[index].name),
              subtitle: Text(productList[index].category),
            );
            /*return Card(
            child: ListTile(
              title: Text('Item $index'),
            ),
          );*/
          }),
    );
  }
}
