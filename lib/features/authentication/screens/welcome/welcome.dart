import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/controllers/onboarding_controller.dart';
import 'package:segarku/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:segarku/features/authentication/screens/signup/signup.dart';
import 'package:segarku/features/authentication/screens/login/login.dart';

import 'package:segarku/utils/constants/image_strings.dart';
import 'package:segarku/utils/constants/text_strings.dart';
import 'package:segarku/utils/constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitele3,
                subTitle: STexts.onBoardingSubTitele3,
              ),
            ],
          ),

          // Buttons
          Positioned(
            bottom: 90,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 160,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () => Get.offAll(() => const LoginScreen()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade600,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    width: 160,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () => Get.offAll(() => const SignUpScreen()),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: SColors.green600),
                        backgroundColor:
                            Theme.of(context).brightness == Brightness.dark
                                ? Colors.black // Warna untuk dark mode
                                : Colors.white, // Warna untuk light mode
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: SColors.green600,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
