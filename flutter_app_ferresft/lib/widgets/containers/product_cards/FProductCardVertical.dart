import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/utils/ImageString.dart';
import 'package:flutter_app_ferresft/widgets/containers/FCircularContainer.dart';
import 'package:flutter_app_ferresft/widgets/containers/product_cards/BtnAddCart.dart';
import 'package:flutter_app_ferresft/widgets/containers/product_cards/texts/product_TitleCard.dart';
import 'package:flutter_app_ferresft/widgets/images/BImageRounded.dart';
import 'package:flutter_app_ferresft/widgets/images/icons/CircularIcon.dart';

class FProductCardVertical extends StatelessWidget {
  const FProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width * 0.42; // Ajusta el porcentaje según sea necesario
    final cardHeight = screenSize.height * 0.46;
    
    return GestureDetector(
      onTap: () {},
    child: Container(
      width: cardWidth,
      height: cardHeight,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        //boxShadow: [ShadowCardStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(6),
        color: GlobalColors.thirdColor,
        border: Border.all(
          color: GlobalColors.borderColor5,
          width: 1,
        )
      ),
      child: Column(
        children: [
          //thumbnail - miniatura, Whislist button, discount (optiona)
          FCircularContainer(
            height: 170,
            padding: const EdgeInsets.all(4),
            child: Stack(
              children: [
                // product img
                const BImageRounded(imageUrl: StrImages.productImg1, applyImageRadius: true,),
                
                // favorite icon btn
                Positioned(
                  top: 0,
                  right: 0,
                  child: FCircularIcon(icon: Icons.favorite_border_outlined, color: GlobalColors.primaryColor,)
                )
              ],
            ),
          ),
          // details and description 
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Herramienta electrica', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: GlobalColors.textColor1),),
                const ProductTitleCard(title: 'Taladro electrico DeWalt'),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text('DeWalt', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium,),
                    const SizedBox(width: 4,),
                    Icon(Icons.verified, color: GlobalColors.primaryColor, size: 12,)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$35.5',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GlobalColors.textColor2),
                    ),
                    Text('\$25.5', maxLines: 1, overflow: TextOverflow.ellipsis, 
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: GlobalColors.primaryColor),
                    ), 
                  ],
                ),
               const SizedBox(height: 10,),
                const Row(
                  children: [
                    BtnAddCart()
                  ],
                )
            ],)
          )
        ],
      ),
    )
    );
  }
}

