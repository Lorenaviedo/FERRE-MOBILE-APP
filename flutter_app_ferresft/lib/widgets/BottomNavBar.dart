import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/ui/views/customer/FavoritePage.dart';
import 'package:flutter_app_ferresft/ui/views/home/HomeInterface.dart';
import 'package:flutter_app_ferresft/ui/views/home/test_products.dart';
import 'package:flutter_app_ferresft/ui/views/user/UserProfile.dart';
import 'package:flutter_app_ferresft/utils/global.colors.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          height: 85,
          //padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: GlobalColors.primaryColor, // Color naranja
                width: 1, // Grosor del borde
              ),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            backgroundColor: GlobalColors.thirdColor, // Fondo blanco
            selectedItemColor: Colors.black, // Iconos seleccionados en negro
            unselectedItemColor: Colors.black54, // Iconos no seleccionados en gris
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Cuenta',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.percent_rounded),
                label: 'Ofertas',
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeInterface(),
    const UserProfile(),
    const WishListPage(),
    const TestScreen(),
    // const ProductDetailView(),
  ];
}
