import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:how_far_uni/presentation/components/custom_elevated_button.dart';
import 'package:how_far_uni/presentation/components/custom_search_bar.dart';
import 'package:how_far_uni/presentation/screens/live_map_page.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class SelectUniversity extends StatelessWidget {
  const SelectUniversity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            ColoredBox(
              color: AppColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [const Gap(70), const CustomSearchBar()],
                ),
              ),
            ),
            const Gap(20),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: 5,
                itemBuilder:
                    (context, index) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.secondaryColor,
                        radius: 25,
                      ),
                      title: Text(
                        'Federal University of Oye Ekiti.',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Ekiti State, Nigeria',
                        style: TextStyle(color: AppColors.grey),
                      ),
                    ),
              ),
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LiveMapPage()),
                );
              },
              label: 'Set as my destination',
            ),
          ],
        ),
      ),
    );
  }
}
