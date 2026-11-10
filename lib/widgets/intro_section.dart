import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'CAMPUS STORE',
            style: TextStyle(
              color: AppColors.blue,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Ready for checkout',
          style: TextStyle(
            color: AppColors.navy,
            fontSize: 32,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Review your items before placing your order.',
          style: TextStyle(color: AppColors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
