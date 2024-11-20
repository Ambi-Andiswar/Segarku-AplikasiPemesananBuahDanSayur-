import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/screens/login/login.dart';
import 'package:segarku/utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/common/styles/spacing_style.dart';
import 'package:segarku/features/authentication/screens/password_configuration/reset_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = context.isDarkMode;
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
              onPressed: () => Get.offAll(() => const LoginScreen(),
                  duration: const Duration(milliseconds: 500)),
              icon: const Icon(Icons.arrow_back, color: SColors.white),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Lupa Password',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(STexts.forgetPasswordTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: SSizes.borderRadiusSm),

                  // Subtitle
                  Text(STexts.forgetPasswordSubTitle,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: dark ? SColors.white : SColors.blackSoap400)),

                  const SizedBox(height: SSizes.spaceBtwItems2),
                ],
              ),

              Form(
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
                          borderSide: const BorderSide(color: SColors.primary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwItems2),

              /// Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          Get.to(() => const ResetPasswordScreen()),
                      child: Text(
                        STexts.sendCode,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.normal,
                                color: SColors.white),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
