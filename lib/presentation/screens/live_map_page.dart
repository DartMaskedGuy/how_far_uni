import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:how_far_uni/presentation/components/custom_search_bar.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class LiveMapPage extends StatelessWidget {
  const LiveMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const CustomSearchBar(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              size: 40,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/map.jpeg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: Column(
                children: [
                  FloatingActionButton(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(Icons.directions_car_filled_outlined),
                  ),
                  const Gap(15),
                  FloatingActionButton(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(Icons.gps_fixed_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
