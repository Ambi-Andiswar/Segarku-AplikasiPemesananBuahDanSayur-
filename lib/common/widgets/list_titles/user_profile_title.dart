import 'package:flutter/material.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class SUserProfileTitle extends StatelessWidget {
  final VoidCallback onPressed;

  const SUserProfileTitle({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final bool dark = context.isDarkMode;
    return Container(
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
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: SSizes.sm),
                Text(
                  'johndoe@gmail.com',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: dark ? SColors.white : SColors.blackSoap400,
                      ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Iconsax.edit,
              color: SColors.green500,
            ),
          ),
        ],
      ),
    );
  }
}
