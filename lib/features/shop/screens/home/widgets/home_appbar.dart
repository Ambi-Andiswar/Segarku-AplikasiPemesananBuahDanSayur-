import 'package:flutter/material.dart';
import 'package:segarku/common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/common/widgets/notification/notification.dart';

class SHomeAppBar extends StatelessWidget {
  const SHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(STexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: SColors.blackSoap500)),
          Text(STexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: SColors.blackSoap400)),
        ],
      ),
      actions: [
        SNotification(onPress: () {}, iconColor: SColors.white),
      ],
    );
  }
}
