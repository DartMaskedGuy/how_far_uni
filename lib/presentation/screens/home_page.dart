import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:how_far_uni/presentation/components/custom_search_bar.dart';
import 'package:how_far_uni/presentation/components/home_location_details.dart';
import 'package:how_far_uni/presentation/components/street_view_scroll.dart';
import 'package:how_far_uni/presentation/screens/select_university.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: AppColors.primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hi, \nDartMaskedGuy!',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              showDragHandle: true,
                              isScrollControlled: true,
                              useSafeArea: true,
                              backgroundColor: AppColors.white,
                              context: context,
                              builder:
                                  (context) => Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                    ),
                                    height: MediaQuery.sizeOf(context).height,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          child: const CustomSearchBar(),
                                        ),
                                        const Gap(20),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
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
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        AppColors
                                                            .secondaryColor,
                                                    radius: 25,
                                                  ),
                                                  title: Text(
                                                    'Federal University of Oye Ekiti.',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    'Ekiti State, Nigeria.',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder:
                                                            (context) =>
                                                                const SelectUniversity(),
                                                      ),
                                                    );
                                                  },
                                                ),
                                          ),
                                        ),
                                        const Gap(20),
                                      ],
                                    ),
                                  ),
                            );
                          },
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Icon(
                            Icons.search,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/map.jpeg',
                        height: double.infinity,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.person_pin_circle_outlined,
                              size: 60,
                              color: AppColors.primaryColor,
                            ),
                            Text(
                              '68 km',
                              style: GoogleFonts.poppins(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '1 hr 20 min',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            const Gap(30),
                            const StreetViewScroll(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const HomeLocationDetails(),
        ],
      ),
    );
  }
}
