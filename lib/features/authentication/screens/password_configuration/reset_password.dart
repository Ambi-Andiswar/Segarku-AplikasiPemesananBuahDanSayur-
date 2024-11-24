import 'package:flutter/material.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:segarku/features/authentication/screens/login/login.dart';
import 'package:segarku/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:segarku/utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/common/styles/spacing_style.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                        Get.to(() => const ForgetPasswordScreen());
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
                      STexts.forgetPassword,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwSections2),

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
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
                        STexts.next,
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
