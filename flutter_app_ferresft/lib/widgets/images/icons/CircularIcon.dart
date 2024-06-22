import 'package:flutter/material.dart';

class FCircularIcon extends StatelessWidget {
  const FCircularIcon({
    super.key, 
    this.widht, 
    this.height, 
    this.size = 25, 
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed,
    
  });

  final double? widht, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed, 
        icon: Icon(icon, color: color, size: size)
      ),
    );
  }
}