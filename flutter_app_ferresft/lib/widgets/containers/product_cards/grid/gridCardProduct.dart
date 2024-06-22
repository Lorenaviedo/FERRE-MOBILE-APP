import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Sizes.dart';
import 'package:flutter_app_ferresft/widgets/containers/product_cards/FProductCardVertical.dart';

class GridCardProduct extends StatelessWidget {
  const GridCardProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: FSizes.gridViewSpacing,
        crossAxisSpacing: 25,
        mainAxisExtent: 340,
      ), 
      itemBuilder: (_, index) => const FProductCardVertical()
    ),
    );
  }
}