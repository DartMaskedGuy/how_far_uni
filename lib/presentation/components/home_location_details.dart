import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:how_far_uni/presentation/screens/live_map_page.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class HomeLocationDetails extends StatelessWidget {
  const HomeLocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: AppColors.primaryColor),
          boxShadow: [
            BoxShadow(
              color: const Color(0x49004B89),
              spreadRadius: 3,
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.maps_home_work_outlined,
                        color: AppColors.primaryColor,
                      ),
                      const Gap(5),
                      Text(
                        'Current University:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    'Federal University Oye - Ekiti, Ekiti State.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Icon(
                        Icons.gps_fixed_outlined,
                        color: AppColors.primaryColor,
                      ),
                      const Gap(5),
                      Text('Current Location:', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Text(
                    '121 Garki Street, Wuse, Abuja.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(5),
            IconButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LiveMapPage(),
                    ),
                  ),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: Icon(Icons.directions_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
