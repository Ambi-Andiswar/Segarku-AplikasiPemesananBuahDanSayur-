import 'package:flutter/material.dart';
import 'package:segarku/common/styles/spacing_style.dart';
import 'package:segarku/utils/helpers/helper_functions.dart';
import 'package:segarku/utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/features/authentication/screens/welcome/welcome.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:iconsax/iconsax.dart';
import 'package:segarku/features/authentication/controllers/signup_controller.dart';
import 'package:segarku/utils/validators/validation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());

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
                      STexts.signUp,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwSections2),
              // Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(STexts.signUpTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: SSizes.borderRadiusSm),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: SSizes.spaceBtwSections2),
                    child: Text(STexts.signUpSubTitle,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color:
                                dark ? SColors.white : SColors.blackSoap400)),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections2),
                ],
              ),

              // Form
              Form(
                key: controller.signupFormKey,
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
                        controller: controller.email,
                        validator: (value) =>
                            SValidator.validateEmptyText('email', value),
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
                      const SizedBox(height: SSizes.spaceBtwInputFields2),

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
                        controller: controller.password,
                        validator: (value) =>
                            SValidator.validateEmptyText('password', value),
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
                      const SizedBox(height: SSizes.spaceBtwInputFields / 2),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password anda harus terdiri dari setidaknya 6 karakter',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontSize: 11,
                                    color: SColors.blackSoap400,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields2),

                      // Ulangi Password Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(STexts.confirmPassword,
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
                        controller: controller.confirmPassword,
                        validator: (value) => SValidator.validateEmptyText(
                            'confirmPassword', value),
                        decoration: InputDecoration(
                          labelText: STexts.confirmPasswordSubTitle,
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: STexts.confirmPasswordSubTitle,
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
                          suffixIcon: Icon(Iconsax.eye_slash,
                              color:
                                  dark ? SColors.white : SColors.blackSoap600),
                        ),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields / 2),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Masukan kata sandi yang sama',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontSize: 11,
                                    color: SColors.blackSoap400,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      const SizedBox(height: SSizes.spaceBtwInputFields2),

                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => controller.signup(),
                          child: Text(
                            STexts.register,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: SColors.white,
                                ),
                          ),
                        ),
                      ),

                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),

                      // Terms & Conditions Text
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '${STexts.agreeToLogin} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: SColors.blackSoap400,
                                ),
                            children: [
                              TextSpan(
                                text: STexts.agreeToTerms,
                                style: const TextStyle(color: SColors.green500),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Terms & Conditions tap
                                  },
                              ),
                              const TextSpan(
                                text: ' ${STexts.and} ',
                                style: TextStyle(color: SColors.blackSoap400),
                              ),
                              TextSpan(
                                text: STexts.privacyPolicy,
                                style: const TextStyle(color: SColors.green500),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Privacy Policy tap
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
            ],
          ),
        ),
      ),
    );
  }
}
