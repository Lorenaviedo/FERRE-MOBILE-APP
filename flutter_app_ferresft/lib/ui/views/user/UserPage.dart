import 'package:flutter/material.dart';
//import 'package:flutter_app_ferresft/widgets/ListsProduct.dart';
import 'package:flutter_app_ferresft/widgets/TabPage.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products List'),
      ),
      // body: const ListsProduct(),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     tooltip: 'Text',
      //     child: Icon(Icons.add),
      //   )
      body: const TabPage(),
    );
  }
}
