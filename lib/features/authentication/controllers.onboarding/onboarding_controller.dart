import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///  Update Current Index when Page Scrol
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot seelllcted page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(
        () => const LoginScreen(),
        transition: Transition.rightToLeft, // atau transition lainnya
        duration: const Duration(milliseconds: 500),
      );
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}
