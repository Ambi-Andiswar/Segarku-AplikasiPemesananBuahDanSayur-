import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SVerticalText extends StatelessWidget {
  const SVerticalText({
    super.key,
    required this.title,
    this.textColor = SColors.blackSoap500,
    this.backgroundColor,
    this.onTap,
  });

  final String title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 40,
              padding: const EdgeInsets.all(SSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? SColors.black : SColors.white),
              ),
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: textColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
