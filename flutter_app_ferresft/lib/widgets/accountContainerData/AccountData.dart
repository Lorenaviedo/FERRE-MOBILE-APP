import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';

class AccountData extends StatelessWidget {
  const AccountData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final containerWidth = screenSize.width * 0.25; // Ajusta el porcentaje según sea necesario
    final containerHeight = screenSize.height * 0.12;

    return Row(
        children: [
          Padding(padding: EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Container(
                width: containerWidth,
                height: containerHeight,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: GlobalColors.thirdColor,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: GlobalColors.borderColor2,
                    width: 1,
                  )
                ),
                child: Center(
                  child: Icon(Icons.person, color: GlobalColors.primaryColor, size: 60,),
                  //child: Image(image: AssetImage(image), fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                //width: 55, 
                child: Center(
                child: 
                  Text(
                  'Datos', 
                  style: Theme.of(context).textTheme.titleMedium  !.apply(color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
              )
                )
            ),
            ]
          ),),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
              children: [
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: GlobalColors.thirdColor,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: GlobalColors.borderColor2,
                      width: 1,
                    )
                  ),
                  child: Center(
                    child: Icon(Icons.location_on_rounded, color: GlobalColors.primaryColor, size: 60,),
                    //child: Image(image: AssetImage(image), fit: BoxFit.cover,),
                  ),
                ),
                const SizedBox(height: 5,),
                SizedBox(
                  //width: 55, 
                  child: Center(
                  child: 
                    Text(
                    'Direcciones', 
                    style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                )
                  )
              ),
              ]
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: GlobalColors.thirdColor,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: GlobalColors.borderColor2,
                        width: 1,
                      )
                    ),
                    child: Center(
                      child: Icon(Icons.password_rounded, color: GlobalColors.primaryColor, size: 60,),
                      //child: Image(image: AssetImage(image), fit: BoxFit.cover,),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    //width: 55, 
                    child: Center(
                    child: 
                      Text(
                      'Contraseña', 
                      style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  )
                    )
                ),
                ]
              ),
          ),
        ],
      );
  }
}