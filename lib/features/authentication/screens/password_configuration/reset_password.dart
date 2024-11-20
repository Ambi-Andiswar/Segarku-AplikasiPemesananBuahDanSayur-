import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/screens/login/login.dart';
import 'package:segarku/features/authentication/screens/signup/signup.dart';
import 'package:segarku/utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/common/styles/spacing_style.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
              onPressed: () => Get.offAll(() => const SignUpScreen(),
                  duration: const Duration(milliseconds: 500)),
              icon: const Icon(Icons.arrow_back, color: SColors.white),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Verifikasi Email',
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
                  Text(STexts.verifyEmail,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: SSizes.borderRadiusSm),

                  // Subtitle
                  Text(STexts.verifyEmailSub,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: dark ? SColors.white : SColors.blackSoap400)),
                  const SizedBox(height: SSizes.spaceBtwInputFields2),

                  //  Email
                  Text('segarkuId@gmail.com',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: dark ? SColors.white : SColors.blackSoap500,
                          )),
                  const SizedBox(height: SSizes.spaceBtwSections2),
                ],
              ),

              /// Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text(
                        STexts.continiue,
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
