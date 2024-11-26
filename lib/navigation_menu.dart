import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/shop/screens/home/home.dart';
import 'features/personalization/screens/settings/settings.dart';
import 'package:segarku/utils/helpers/helper_functions.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? SColors.black : Colors.white,
          indicatorColor: darkMode
              ? SColors.white.withOpacity(0.1)
              : SColors.green500.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Beranda'),
            NavigationDestination(
                icon: Icon(Iconsax.shopping_cart), label: 'Keranjang'),
            NavigationDestination(
                icon: Icon(Iconsax.document), label: 'Riwayat'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    const SettingsScreen(),
  ];

  final isSelected = false.obs;
}
