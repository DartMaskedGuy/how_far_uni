import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:how_far_uni/presentation/components/custom_search_bar.dart';
import 'package:how_far_uni/presentation/components/image_scroller.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class SearchBottomModalSheet extends StatelessWidget {
  const SearchBottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      height: MediaQuery.sizeOf(context).height,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const CustomSearchBar(),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Frequently Searched',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Gap(5),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => _buildUniSearchList(),
            ),
          ),
          const Gap(30),
        ],
      ),
    );
  }

  // Build Search List
  Widget _buildUniSearchList() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: const Color(0x569E9E9E)),
        ),
      ),
      child: Column(
        children: [
          Gap(10),
          ImageScroller(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.maps_home_work_outlined),
                          Gap(3),
                          Text(
                            'University of Lagos, Akoka, Lagos State.',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      Text(
                        'Federal University',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Distance from current location: 30km',
                        style: TextStyle(color: AppColors.grey, fontSize: 12),
                      ),
                      Text(
                        'Time it will take: 1hr 30mins',
                        style: TextStyle(color: AppColors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Row(children: [Icon(Icons.star), Text('4.8')]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
