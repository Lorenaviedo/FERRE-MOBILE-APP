import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/utils/ImageString.dart';
import 'package:flutter_app_ferresft/widgets/containers/product_cards/grid/gridCardProduct.dart';
import 'package:flutter_app_ferresft/widgets/home/PromoSlider.dart';
import 'package:flutter_app_ferresft/widgets/texts/categoriesHeading.dart';

class HomeInterface extends StatelessWidget {
  const HomeInterface({super.key});

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
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.white,
              tooltip: 'Show Shopping Cart',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('0 Products in your cart')));
              },
            ),
          )
        ],
        bottom: PreferredSize(
          //backgroundColor: const Color.fromARGB(255, 255, 167, 52),
          preferredSize: const Size.fromHeight(80),
          child: Container(
            color: Colors.black, // Establecer el color de fondo negro
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Busca tus productos',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 18,),
            const CategoriesHeading(title: 'Nuestras Marcas', showActionButton: false,),
            const Padding(
              padding: EdgeInsets.all(20),
              child: FPromoSlider(),
            ),
            const SizedBox(height: 15,),
            const CategoriesHeading(title: 'Recomendados', showActionButton: false,),
            // FProductCardVertical(),
            // card products vertical
            GridCardProduct(),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Column(
                children: [
                  const CategoriesHeading(title: 'Categorias', showActionButton: false,),
                  const SizedBox(height: 20,),
                  // LisyView
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return HorizontalListView(
                          image: StrImages.category1, 
                          title: 'Herramienta Manual', 
                          onTap: (){},
                        );
                      },
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    this.onTap,
    required this.image,
    required this.title,
  });

  final String image, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: GlobalColors.thirdColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: GlobalColors.borderColor5,
                  width: 1,
                )
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover,),
              ),
          ),
          const SizedBox(height: 5,),
          SizedBox(
            width: 55, 
            child: 
              Text(
              title, 
              style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ),
        ],
      )
    ),
  );
  }
}

