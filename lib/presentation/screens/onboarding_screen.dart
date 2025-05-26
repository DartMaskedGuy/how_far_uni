import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:how_far_uni/presentation/screens/main_page.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 40,
              child: Icon(
                Icons.location_history,
                size: 45,
                color: AppColors.white,
              ),
            ),
            const Gap(10),
            Text(
              'How Far To Campus?',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(5),
            Text(
              'Let\'s find out.',
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.black45),
            ),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade300,
              ),
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
