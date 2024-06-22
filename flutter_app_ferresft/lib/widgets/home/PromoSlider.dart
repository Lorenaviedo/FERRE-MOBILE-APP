import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app_ferresft/features/controllers/homeController.dart';
import 'package:flutter_app_ferresft/utils/ImageString.dart';
import 'package:flutter_app_ferresft/utils/global.colors.dart';
import 'package:flutter_app_ferresft/widgets/containers/FCircularContainer.dart';
import 'package:flutter_app_ferresft/widgets/images/BImageRounded.dart';
import 'package:get/get.dart';

class FPromoSlider extends StatelessWidget {
  const FPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: const [
            BImageRounded(imageUrl: StrImages.promoBannerBosch),
            BImageRounded(imageUrl: StrImages.promoBannerUrrea),
            BImageRounded(imageUrl: StrImages.promoBannerDewalt)
          ],
        ),
        const SizedBox(height: 10,),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i=0; i<3; i++ )
                FCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? GlobalColors.primaryColor: GlobalColors.bgColor,
                  //backgroundColor: GlobalColors.primaryColor,
                )
              ],
            )
          )
        )
      ],
    );
  }
}

