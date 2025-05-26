import 'package:flutter/material.dart';
import 'package:how_far_uni/presentation/components/custom_search_bar.dart';
import 'package:how_far_uni/presentation/themes/app_colors.dart';

class LiveMapPage extends StatelessWidget {
  const LiveMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const CustomSearchBar(),
        actions: [
          Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: AppColors.secondaryColor,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.gps_fixed_outlined),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset('assets/images/map.jpeg', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
