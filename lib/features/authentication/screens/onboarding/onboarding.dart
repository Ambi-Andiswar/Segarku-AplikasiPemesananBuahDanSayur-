import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/controllers/onboarding_controller.dart';
import 'package:segarku/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:segarku/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:segarku/features/authentication/screens/onboarding/widgets/onboarding_page.dart';

import 'package:segarku/utils/constants/image_strings.dart';
import 'package:segarku/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitele1,
                subTitle: STexts.onBoardingSubTitele1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitele2,
                subTitle: STexts.onBoardingSubTitele2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitele3,
                subTitle: STexts.onBoardingSubTitele3,
              ),
            ],
          ),

          // Dot Navigator SmoothPageIndicator
          const OnboardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
