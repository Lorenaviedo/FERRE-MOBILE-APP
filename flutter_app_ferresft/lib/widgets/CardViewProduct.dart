import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/class/Product.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';

// ignore: must_be_immutable
class CardViewProduct extends StatelessWidget {
  ProductList productList;
  CardViewProduct(this.productList, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var snackBar = SnackBar(content: Text("Title ${productList.name}"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            padding(Text(
              productList.name,
              style: const TextStyle(fontSize: 20.0),
            )),
            Container(
              height: 150.0,
              width: 300.0,
              color: GlobalColors.borderColor4,
              child: Image.network(
                productList.image,
                height: 150.0,
                width: 170.0,
              ),
            ),
            Row(
              children: <Widget>[
                padding(
                  Text(
                    productList.category,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                padding(
                  Text(
                    productList.name,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget padding(Widget widget) {
    return Padding(padding: const EdgeInsets.all(0.7), child: widget);
  }
}
