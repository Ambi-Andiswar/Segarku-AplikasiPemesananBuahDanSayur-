import 'package:flutter/material.dart';
import 'package:segarku/common/styles/spacing_style.dart';
import 'package:segarku/utils/helpers/helper_functions.dart';
import 'package:segarku/utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:flutter/gestures.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/features/authentication/screens/welcome/welcome.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/screens/signup/signup.dart';
import 'package:segarku/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:segarku/navigation_menu.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back button and "Masuk" text
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
                            Get.to(() => const WelcomeScreen());
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
                          STexts.login,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections2),

                  // Title and Subtitle
                  Text(STexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: SSizes.borderRadiusSm),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: SSizes.spaceBtwSections1),
                    child: Text(
                      STexts.loginSubTitle,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: dark ? SColors.white : SColors.blackSoap400,
                          ),
                    ),
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
                      const SizedBox(height: SSizes.spaceBtwItems2),

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
                            suffixIcon: Icon(Iconsax.eye_slash,
                                color: dark
                                    ? SColors.white
                                    : SColors.blackSoap600)),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields),

                      // Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () =>
                                  Get.to(() => const ForgetPasswordScreen()),
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
                      const SizedBox(height: SSizes.spaceBtwInputFields),

                      // Sign In Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.to(() => const NavigationMenu()),
                              child: Text(
                                STexts.signIn,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: SColors.white),
                              ))),
                      const SizedBox(height: SSizes.spaceBtwItems),

                      // Daftar sekarang
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${STexts.registerNowSubTitle} ",
                              style: Theme.of(context).textTheme.labelSmall),
                          TextButton(
                            onPressed: () => Get.to(() => const SignUpScreen()),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              STexts.registerNow,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: SColors.green600,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
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

              // Social Media Login
              // Google Login Button
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan aksi untuk login dengan Google
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: dark ? Colors.black : SColors.white,
                    side: BorderSide(
                      color: dark ? SColors.blackSoap300 : SColors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(SSizes.inputFieldRadius),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google Logo
                      Image.asset(
                        'assets/logos/google.png',
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 12),
                      // Button Text
                      Text(
                        "Masuk dengan Google",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400, // Regular
                              color:
                                  dark ? SColors.white : SColors.blackSoap500,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              // Agree to Login
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '${STexts.agreeToLogin} ',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: SColors.blackSoap400,
                        ),
                    children: [
                      TextSpan(
                        text: STexts.agreeToTerms,
                        style: const TextStyle(color: SColors.green500),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: ' ${STexts.and} ',
                        style: TextStyle(color: SColors.blackSoap400),
                      ),
                      TextSpan(
                        text: STexts.privacyPolicy,
                        style: const TextStyle(
                          color: SColors.green500,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Tambahkan aksi ketika Privacy Policy diklik
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
