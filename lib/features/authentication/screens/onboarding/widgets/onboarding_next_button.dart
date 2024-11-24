import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/size.dart';
import '../../../../../../utils/device/device.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      right: SSizes.defaultSpaceDot,
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? Colors.black : SColors.green600,
          minimumSize: const Size(57, 57),
          fixedSize: const Size(57, 57),
          padding: EdgeInsets.zero,
        ),
        child: const Icon(
          Icons.arrow_forward,
          size: 24,
        ),
      ),
    );
  }
}
