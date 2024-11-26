import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/utils/constants/size.dart';

class SNotification extends StatelessWidget {
  const SNotification({
    super.key,
    required this.onPress,
    required this.iconColor,
  });

  final Color iconColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: SSizes.defaultSpace),
          decoration: const BoxDecoration(
            color: SColors.green500,
            shape: BoxShape.circle,
          ),
          child: IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.notification, color: iconColor)),
        ),
        Positioned(
          right: SSizes.defaultSpace,
          child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: SColors.error100,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text('2',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .apply(color: SColors.white)
                        .copyWith(fontSize: 9)),
              )),
        ),
      ],
    );
  }
}
