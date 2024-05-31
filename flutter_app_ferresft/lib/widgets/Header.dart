import 'package:flutter/material.dart';
import '../utils/Global.colors.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: CustomPaint(
        painter: HeaderLoginPainter(),
      ),
    );
  }
}

class HeaderLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = GlobalColors.primaryColor;
    paint.style = PaintingStyle.fill;
    final path = Path();
    path.lineTo(0, size.height * 1.0);
    path.lineTo(
      size.width * 0.2,
      size.height * 1.0,
    );
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}
