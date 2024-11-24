import 'package:flutter/material.dart';

import '../../../../../../utils/constants/size.dart';
//import '../../../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Bagian Gambar
        Expanded(
          flex: 3, // Mengatur proporsi tinggi gambar
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        // Bagian Teks
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              top: SSizes.titleSpaceTop, // Jarak dari gambar ke title
              left: SSizes.titleSpaceLeftRight, // Jarak dari kiri
              right: SSizes.titleSpaceLeftRight, // Jarak dari kanan
            ),
            child: Column(
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: SSizes.spaceBtwSections),
                Text(subTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
