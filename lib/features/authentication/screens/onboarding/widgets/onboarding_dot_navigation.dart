import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/size.dart';
import '../../../../../../utils/device/device.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers.onboarding/onboarding_controller.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: CustomizableEffect(
          activeDotDecoration: DotDecoration(
            width: 31, // Lebar dot aktif
            height: 6, // Tinggi dot aktif
            color: dark ? SColors.green100 : SColors.green800,
            borderRadius: BorderRadius.circular(4),
          ),
          dotDecoration: DotDecoration(
            width: 6, // Lebar dot lainnya
            height: 6, // Tinggi dot lainnya
            color: dark ? SColors.light.withOpacity(0.3) : SColors.green300,
            borderRadius: BorderRadius.circular(4),
          ),
          spacing: 6, // Jarak antar dot
        ),
      ),
    );
  }
}
