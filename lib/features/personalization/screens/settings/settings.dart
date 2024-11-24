import 'package:flutter/material.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/screens/signup/signup.dart';
import 'package:segarku/utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/common/styles/spacing_style.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = context.isDarkMode;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Back button
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: dark ? Colors.black : SColors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: SColors.blackSoap300,
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.to(() => const SignUpScreen());
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 16,
                        color: dark ? SColors.white : SColors.blackSoap500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      STexts.settings,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwSections2),

              Container(
                padding: const EdgeInsets.all(SSizes.md),
                decoration: BoxDecoration(
                  color: dark ? SColors.black : SColors.white,
                  borderRadius: BorderRadius.circular(SSizes.cardRadiusMd),
                  border: Border.all(
                    color: SColors.blackSoap300,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    // Profile Image
                    Image.asset(
                      'assets/images/Settings/profile.png',
                      width: 80,
                      height: 80,
                    ),

                    const SizedBox(width: SSizes.spaceBtwItems),

                    // Name & Email
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'John Doe',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const SizedBox(height: SSizes.sm),
                          Text(
                            'johndoe@gmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: dark
                                      ? SColors.white
                                      : SColors.blackSoap400,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
