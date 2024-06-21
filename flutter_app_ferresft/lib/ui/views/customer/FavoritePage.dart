import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/widgets/containers/product_cards/grid/gridCardProduct.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('FAVORITOS'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        backgroundColor: const Color.fromARGB(255, 255, 167, 52),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            GridCardProduct()
          ],
        ),
      ),
    );
  }
}
