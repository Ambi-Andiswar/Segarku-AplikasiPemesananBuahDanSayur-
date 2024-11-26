import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
        child: Container(
          width: SDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? SColors.darkGrey
                    : SColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: SColors.grey) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Icon(icon, color: SColors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
