import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/utils/ImageString.dart';
import 'package:flutter_app_ferresft/widgets/home/PromoSlider.dart';

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
        backgroundColor: const Color.fromARGB(255, 255, 167, 52),
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Text('Marcas', style: TextStyle(fontSize: 15)),
            const Padding(
              padding: EdgeInsets.all(25),
              child: FPromoSlider(),
              // child: BImageRounded(imageUrl: StrImages.promoBannerBosch,)
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  const Text('Categorias', style: TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis),),
                  // TextButton(onPressed: (){}, child: Text('ButtonTitle'))
                  const SizedBox(height: 20,),
                  // LisyView
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return HorizontalListView(image: StrImages.category1, title: 'Herramienta Manual', onTap: (){},);
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
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: GlobalColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover,),
              ),
          ),
          const SizedBox(height: 5,),
          SizedBox(
            width: 50, 
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

