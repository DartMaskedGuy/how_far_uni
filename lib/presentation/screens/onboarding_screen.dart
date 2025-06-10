import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:how_far_uni/presentation/screens/main_page.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(500),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SizedBox(
                // height: 300,
                child: ColoredBox(
                  color: Colors.transparent,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Spacer(),
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
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          'Let\'s find out.',
                          style: TextStyle(fontSize: 20, color: Colors.black45),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade300,
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Gap(5),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
