import 'package:flutter/material.dart';
import 'package:how_far_uni/presentation/utils/themes/app_colors.dart';

class ViewStreetButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const ViewStreetButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
