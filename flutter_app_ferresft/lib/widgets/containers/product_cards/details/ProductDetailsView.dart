import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/ui/views/home/test_products.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:get/get.dart';
import 'package:flutter_app_ferresft/models/ProductsFerre.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail ({
    super.key, 
    required this.category, 
    required this.productName, 
    required this.brand, 
    required this.description, 
    required this.price, 
    required this.discount
  });
  

  final Category category;
  final String productName;
  final String brand;
  final String description;
  final String price;
  final String discount;

  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: currentHeight * 0.4,
                        child: Center(
                            child: Image.network(
                                'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/sodimacCO/515274/w=1036,h=832,f=webp,fit=contain,q=85')),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      const Text(
                        // CATEGORIA
                        "HERRAMIENTA ELECTRICA",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        // NAME PRODUCT
                        productName,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        // MARCA
                        brand,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      const Text(
                        //
                        "Descripción del producto",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        // DESCRIPTION
                        description,
                        style: TextStyle(fontSize: 16),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      const Text(
                        "Instrucciones",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Taladro insdustrial de la marca DeWalt de color amarillo como su marca representativa, con dimensiones de 23 cm x 13 cm, considerad un equipo de medida mediana.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: currentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // PRICE AND DISCOUNT
                      Text(price),
                      Text('% $discount'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ButtonCommon()
                ],
              ),
            ),
          ],

      ),
    );
  }
}

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        //margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: GlobalColors.btnColor1,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: TextButton(
          onPressed: () => { Get.to(const TestScreen())},
          child: const Text(
            'AGREGAR AL CARRITO',
            style: TextStyle(
                height: 2.8,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ));
  }
}
