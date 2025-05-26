import 'package:flutter/material.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class StreetViewScroll extends StatelessWidget {
  const StreetViewScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0x14004B89),
            spreadRadius: 3,
            blurRadius: 3,
          ),
        ],
      ),
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Stack(
                  children: [
                    Image.asset('assets/images/street_view1.jpg'),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.primaryColor,
                        ),
                        icon: Icon(Icons.more_vert),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 8,
                      right: 8,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('View Street'),
                      ),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
