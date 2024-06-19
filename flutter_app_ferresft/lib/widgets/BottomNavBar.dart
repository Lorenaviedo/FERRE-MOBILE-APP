import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/ui/views/customer/FavoritePage.dart';
import 'package:flutter_app_ferresft/ui/views/home/HomeInterface.dart';
import 'package:flutter_app_ferresft/ui/views/home/Home_Screen.dart';
import 'package:flutter_app_ferresft/ui/views/user/UserProfile.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(Icons.percent_rounded), label: 'Offers'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value ]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeInterface(),
    const UserProfile(), 
    const WishListPage(), 
    const HomeScreen(), 
  ];
}
