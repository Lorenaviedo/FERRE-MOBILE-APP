import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          )
        ),
        title: const Text('FERRETERIA'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: GlobalColors.primaryColor,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            tooltip: 'Show Shopping Cart',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('0 Products in your cart')));
            },
          ),
        ],
        bottom: const PreferredSize(
          //backgroundColor: const Color.fromARGB(255, 255, 167, 52),
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Busca tus productos',
                prefixIcon: Icon(Icons.search),
                // suffixIcon: IconButton(
                //   icon: Icon(Icons.clear),
                //   onPressed: () {},
                // ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            )
        ),
      ),
    );
  }
}
