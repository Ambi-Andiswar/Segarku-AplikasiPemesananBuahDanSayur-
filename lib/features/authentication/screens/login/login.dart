import 'package:flutter/material.dart';
import 'package:segarku/common/spacing_style.dart';
import 'package:segarku/utils/helpers/helper_functions.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:segarku/utils/constants/image_strings.dart';
import 'package:segarku/features/authentication/screens/signup.widgets/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: SSizes.defaultSpace),
          child: CircleAvatar(
            backgroundColor: dark
                ? SColors.blackSoap100.withOpacity(0.3)
                : SColors.grey.withOpacity(0.3),
            child: IconButton(
              onPressed: () => Get.offAll(() => const OnBoardingScreen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 500)),
              icon: Icon(
                Iconsax.arrow_left_1,
                color: dark ? SColors.light : SColors.dark,
              ),
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        title: Text(
          'Login',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(STexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: SSizes.borderRadiusSm),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: SSizes.spaceBtwSections1),
                    child: Text(STexts.loginSubTitle,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color:
                                dark ? SColors.white : SColors.blackSoap500)),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections2),
                ],
              ),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: SSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      // Email Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(STexts.email,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: dark
                                        ? SColors.white
                                        : SColors.blackSoap500)),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields / 2),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: STexts.emailButton,
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: STexts.emailButton,
                          hintStyle: Theme.of(context).textTheme.bodyMedium,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(SSizes.inputFieldRadius),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(SSizes.inputFieldRadius),
                            borderSide: const BorderSide(color: SColors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(SSizes.inputFieldRadius),
                            borderSide:
                                const BorderSide(color: SColors.primary),
                          ),
                        ),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields),

                      // Password Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(STexts.password,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: dark
                                        ? SColors.white
                                        : SColors.blackSoap500)),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields / 2),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: STexts.passwordButton,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintText: STexts.passwordButton,
                            hintStyle: Theme.of(context).textTheme.bodyMedium,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  SSizes.inputFieldRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  SSizes.inputFieldRadius),
                              borderSide: const BorderSide(color: SColors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  SSizes.inputFieldRadius),
                              borderSide:
                                  const BorderSide(color: SColors.primary),
                            ),
                            suffixIcon: const Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields / 2),

                      // Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Forget Password
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                STexts.forgetPassword,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: dark
                                          ? SColors.white
                                          : SColors.green600,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ))
                        ],
                      ),
                      const SizedBox(height: SSizes.spaceBtwSections),

                      // Sign In Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                STexts.signIn,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: SColors.white),
                              ))),
                      const SizedBox(height: SSizes.spaceBtwItems2),
                    ],
                  ),
                ),
              ),

              // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                          color: dark ? SColors.blackSoap200 : SColors.grey,
                          thickness: 1.5,
                          indent: 30,
                          endIndent: 5)),
                  Text(STexts.orSignInWith,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: SColors.blackSoap400)),
                  Flexible(
                      child: Divider(
                          color: dark ? SColors.blackSoap200 : SColors.grey,
                          thickness: 1.5,
                          indent: 5,
                          endIndent: 30)),
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              /// Social Media Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: SColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: SSizes.iconXl,
                        height: SSizes.iconXl,
                        image: AssetImage(SImages.facebook),
                      ),
                    ),
                  ),
                  const SizedBox(width: SSizes.spaceBtwSections),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: SColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: SSizes.iconXl,
                        height: SSizes.iconXl,
                        image: AssetImage(SImages.google),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: SSizes.spaceBtwSections2),

              // Register Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(STexts.registerNowSubTitle,
                      style: Theme.of(context).textTheme.labelSmall),
                  TextButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: Text(
                      STexts.registerNow,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: SColors.green600,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
