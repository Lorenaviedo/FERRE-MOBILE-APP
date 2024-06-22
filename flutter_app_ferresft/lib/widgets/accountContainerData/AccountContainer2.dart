import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';

class AccountContainer extends StatelessWidget {
  const AccountContainer({
    super.key,
    required this.icon,
    required this.title
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final contSmWidth = screenSize.width * 0.16; // Ajusta el porcentaje según sea necesario
    final contSmHeight = screenSize.height * 0.09;

    return Row(
      children: [
        Container(
          height: contSmHeight,
          width: contSmWidth,
          margin: EdgeInsets.only(right: 10, bottom: 16),
          decoration: BoxDecoration(
            color: GlobalColors.iconBgColor1,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: GlobalColors.borderColor6,
              width: 1,
            )
          ),
          child: Center(
            child: Icon(icon, color: GlobalColors.primaryColor, size: 30,),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}


