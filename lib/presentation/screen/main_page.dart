import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:how_far_uni/presentation/screen/home_page.dart';
import 'package:how_far_uni/presentation/screen/select_university.dart';
import 'package:how_far_uni/presentation/themes/app_colors.dart';

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
          margin: EdgeInsetsDirectional.only(start: 24, end: 24),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(50),
                blurRadius: 20,
                offset: Offset(0, 20),
              ),
            ],
          ),
          child: GNav(
            tabBackgroundColor: Colors.grey.shade300,
            padding: EdgeInsets.all(10),
            tabBorderRadius: 20,
            gap: 8,
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            tabs: [
              GButton(
                margin: EdgeInsets.all(8),
                haptic: true,
                icon: Icons.home_outlined,
                iconColor: AppColors.primaryColor,
                text: 'Home',
                iconActiveColor: AppColors.primaryColor,
                textColor: AppColors.primaryColor,
              ),
              GButton(
                icon: Icons.bookmark_outline,
                iconColor: AppColors.primaryColor,
                text: 'Saved',
                iconActiveColor: AppColors.primaryColor,
                textColor: AppColors.primaryColor,
              ),
              GButton(
                icon: Icons.person_outline,
                iconColor: AppColors.primaryColor,
                text: 'Profile',
                iconActiveColor: AppColors.primaryColor,
                textColor: AppColors.primaryColor,
              ),
              GButton(
                margin: EdgeInsets.all(8),
                icon: Icons.settings_outlined,
                iconColor: AppColors.primaryColor,
                text: 'Settings',
                iconActiveColor: AppColors.primaryColor,
                textColor: AppColors.primaryColor,
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
  Center(child: Text('Saved Page')),
  SelectUniversity(),
  Center(child: Text('Last Page')),
];
