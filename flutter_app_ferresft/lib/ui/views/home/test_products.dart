import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_ferresft/models/ProductsFerre.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/widgets/containers/product_cards/details/ProductDetailsView.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<StatefulWidget> createState() => TestScreenState();
}

class TestScreenState extends State<TestScreen> {
  ProductsInventory? product;
  int productId = 0;

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  Future<void> getProducts() async {
    productId++;
    String request = 'https://l35xn62g-8000.use2.devtunnels.ms/ferre/api/v1/products/$productId/';
    final response = await Dio().get(request);
    product = ProductsInventory.fromJson(response.data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Taladro de Rotación"),
        titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: GlobalColors.thirdColor,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: GlobalColors.thirdColor,)),
        ],
        backgroundColor: GlobalColors.primaryColor,
      ),
      body: ProductDetail(
        category: product!.category, 
        productName: product!.titleProduct, 
        brand: product!.brand, 
        description: product!.description, 
        price: product!.price, 
        discount: product!.discount
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: getProducts, 
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
