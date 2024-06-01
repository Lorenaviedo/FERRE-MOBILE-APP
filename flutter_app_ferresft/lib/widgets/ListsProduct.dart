import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/class/Product.dart';
import 'package:flutter_app_ferresft/widgets/CardViewProduct.dart';

class ListsProduct extends StatefulWidget {
  const ListsProduct({super.key});

  @override
  State<StatefulWidget> createState() => ListsProductState();
}

class ListsProductState extends State<ListsProduct> {
  List<ProductList> productList = ProductList.productList();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true, // move the card when you touched
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: ObjectKey(productList[index]),
            child: CardViewProduct(productList[index]),
            onDismissed: (direction) {
              setState(() {
                productList.removeAt(index);
              });
            },
          );
        });
  }
}
