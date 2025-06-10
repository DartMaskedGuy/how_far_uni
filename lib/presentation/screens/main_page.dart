import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:how_far_uni/presentation/screens/home_page.dart';
import 'package:how_far_uni/presentation/screens/live_map_page.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: const Color(0x18004B89),
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: GNav(
            tabBackgroundColor: AppColors.primaryColor,
            padding: const EdgeInsets.all(10),
            tabBorderRadius: 50,
            gap: 8,
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            tabs: [
              GButton(
                haptic: true,
                icon: Icons.home_outlined,
                iconColor: AppColors.primaryColor,
                text: 'Home',
                iconActiveColor: AppColors.white,
                textColor: AppColors.white,
              ),
              GButton(
                margin: EdgeInsets.all(8),
                icon: Icons.place_outlined,
                iconColor: AppColors.primaryColor,
                text: 'Live Map',
                iconActiveColor: AppColors.white,
                textColor: AppColors.white,
              ),
              GButton(
                icon: Icons.bookmark_outline,
                iconColor: AppColors.primaryColor,
                text: 'Saved',
                iconActiveColor: AppColors.white,
                textColor: AppColors.white,
              ),
              GButton(
                icon: Icons.notifications_active_outlined,
                iconColor: AppColors.primaryColor,
                text: 'Updates',
                iconActiveColor: AppColors.white,
                textColor: AppColors.white,
              ),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}

final pages = const [
  HomePage(),
  LiveMapPage(),
  Center(child: Text('Saved Page')),
  Center(child: Text('Last Page')),
];
