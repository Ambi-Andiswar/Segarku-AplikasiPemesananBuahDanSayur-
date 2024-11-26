import 'package:flutter/material.dart';
import 'widgets/home_appbar.dart';

import '../../../../utils/constants/size.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_categories.dart';
import '../../../../utils/constants/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              /// Appbar
              const SHomeAppBar(),
              const SizedBox(height: SSizes.spaceBtwItems2),

              /// Search Bar
              const SSearchContainer(text: 'Silahkan mau cari apa?'),
              const SizedBox(height: SSizes.spaceBtwItems2),

              /// Banners
              Padding(
                padding: const EdgeInsets.all(SSizes.defaultSpace),
                child: Column(
                  children: [
                    SizedBox(
                      height: 124,
                      child: PageView(
                        controller: controller,
                        children: const [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image(
                              image: AssetImage(SImages.homeBanner1),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image(
                              image: AssetImage(SImages.homeBanner2),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image(
                              image: AssetImage(SImages.homeBanner3),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        dotHeight: 6,
                        dotWidth: 31,
                        type: WormType.thin,
                      ),
                    ),
                  ],
                ),
              ),

              /// categories
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
                child: Column(
                  children: [
                    // Heading
                    SSectionHeading(title: 'Kategori', showActionButton: false),
                    SizedBox(height: SSizes.spaceBtwItems),

                    // Categories
                    SHomeCategories(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
