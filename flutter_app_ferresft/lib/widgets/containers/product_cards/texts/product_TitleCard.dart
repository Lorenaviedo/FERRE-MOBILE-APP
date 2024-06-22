import 'package:flutter/material.dart';

class ProductTitleCard extends StatelessWidget {
  const ProductTitleCard({
    super.key, 
    required this.title, 
    this.maxLines = 2, 
    this.textAlign = TextAlign.left
  });

  final String title;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 14),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}