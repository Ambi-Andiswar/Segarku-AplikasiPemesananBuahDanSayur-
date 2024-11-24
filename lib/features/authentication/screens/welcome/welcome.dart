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
                image: SImages.welcomeImage,
                title: STexts.welcomeTitle,
                subTitle: STexts.welcomeSubTitle,
              ),
            ],
          ),

          // Buttons
          Positioned(
            bottom: 82,
            left: 20,
            right: 20,
            child: Row(
              children: [
                // Login Button
                Expanded(
                  child: SizedBox(
                    width: 160,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () => Get.offAll(() => const LoginScreen()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: SColors.green600,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        STexts.login,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.white,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),

                // Sign Up Button
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        STexts.signUp,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: SColors.green600,
                            ),
                        textAlign: TextAlign.center,
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
