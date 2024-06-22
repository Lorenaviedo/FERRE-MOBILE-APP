import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/widgets/accountContainerData/AccountContainer2.dart';
import 'package:flutter_app_ferresft/widgets/accountContainerData/AccountData.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final containerWidth = screenSize.width * 0.85; // Ajusta el porcentaje según sea necesario
    final containerHeight = screenSize.height * 0.38;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('CUENTA'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        backgroundColor: const Color.fromARGB(255, 255, 167, 52),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Text('¡BIENVENIDO!', style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.black),),
            const Padding(
              padding: EdgeInsets.all(25), 
              child: AccountData()
            ),
            // second part Buttons 
            Padding(padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 20),
              child: Container(
                height: containerHeight,
                width: containerWidth,
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                  color: GlobalColors.thirdColor,
                  borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: GlobalColors.borderColor2,
                      width: 1,
                    )
                ),
                child: const Column(
                  children: [
                    AccountContainer(icon: Icons.shopping_basket_rounded, title: 'Tus Pedidos'),
                    AccountContainer(icon: Icons.payments_rounded, title: 'Métodos de pago'),
                    AccountContainer(icon: Icons.favorite, title: 'Favoritos')
                  ],
                )
              )
            ), 

            // SECTION 3 - SIGN UP AND DELETE ACCOUNT

            Padding(padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 5),
              child: Container(
                height: 130,
                width: containerWidth,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: GlobalColors.borderColor3,
                  borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: GlobalColors.borderColor4,
                      width: 1,
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cerrar Sesión',
                          style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Icon(Icons.person_off_rounded, color: Colors.green, size: 30,)
                      ]
                    ),
                        Divider(
                          color: GlobalColors.borderColor4, // Color de la línea
                          thickness: 1, // Grosor de la línea
                          height: 20, // Espacio alrededor de la línea
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Eliminar la cuenta',
                          style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Icon(Icons.cancel_outlined, color: Colors.red, size: 30,)
                      ]
                    ),
                    // ITEMS 
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}

