import 'package:flutter/material.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageScroller extends StatefulWidget {
  const ImageScroller({super.key});

  @override
  State<ImageScroller> createState() => _ImageScrollerState();
}

class _ImageScrollerState extends State<ImageScroller> {
  final PageController _imageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 220,
            child: PageView.builder(
              controller: _imageController,
              itemCount: 4,
              itemBuilder:
                  (_, index) => Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Image.asset(
                            'assets/images/street_view1.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: AppColors.white,
                          ),
                        ),
                        // Scroll Controller
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: SmoothPageIndicator(
                              controller: _imageController,
                              count: 4,
                              effect: const ExpandingDotsEffect(
                                radius: 11,
                                dotHeight: 11,
                                dotWidth: 11,
                                dotColor: Colors.white70,
                                activeDotColor: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
