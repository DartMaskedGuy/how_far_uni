import 'package:flutter/material.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Icon(Icons.search),
          ),
          hintText: 'Search for University...',
          hintStyle: const TextStyle(color: AppColors.grey),
          suffixIcon: InkWell(
            onTap: () {},
            child: Icon(Icons.filter_list_rounded),
          ),
          filled: true,
          fillColor: AppColors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
