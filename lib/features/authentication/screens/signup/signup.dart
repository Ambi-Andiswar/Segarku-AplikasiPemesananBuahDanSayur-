import 'package:flutter/material.dart';
import 'package:segarku/common/styles/spacing_style.dart';
import 'package:segarku/utils/helpers/helper_functions.dart';
import 'package:segarku/utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/features/authentication/screens/welcome/welcome.dart';
import 'package:segarku/features/authentication/screens/signup/verify_email.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: SSizes.defaultSpace),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: dark ? Colors.black : SColors.primary,
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              iconSize: 25,
              onPressed: () => Get.offAll(() => const WelcomeScreen()),
              icon: const Icon(Icons.arrow_back, color: SColors.white),
            ),
          ),
        ),
        actions: const [],
        centerTitle: true,
        title: Text(
          'Daftar',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
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
                            suffixIcon: const Icon(Icons.visibility_off)),
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
                          suffixIcon: const Icon(Icons.visibility_off),
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
                              onPressed: () =>
                                  Get.to(() => const VerifyEmailScreen()),
                              child: Text(
                                STexts.register,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: SColors.white),
                              ))),
                      // Tambahkan Terms & Conditions Text
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),

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
                                style: const TextStyle(
                                  color: SColors.green500,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Tambahkan aksi ketika Terms & Conditions diklik
                                  },
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
            ],
          ),
        ),
      ),
    );
  }
}
