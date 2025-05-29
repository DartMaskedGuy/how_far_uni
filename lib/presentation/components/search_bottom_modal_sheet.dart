import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:how_far_uni/presentation/components/custom_search_bar.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class SearchBottomModalSheet extends StatelessWidget {
  const SearchBottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const CustomSearchBar(),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Select University',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(5),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 5,
              itemBuilder:
                  (context, index) => ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.white,
                      child: Icon(Icons.location_city),
                    ),
                    title: Text(
                      'Federal University of Oye Ekiti.',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Ekiti State, Nigeria.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
