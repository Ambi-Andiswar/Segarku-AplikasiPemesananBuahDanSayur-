import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return SVerticalText(
                title: 'Sayur segar',
                onTap: () {},
              );
            }));
  }
}
