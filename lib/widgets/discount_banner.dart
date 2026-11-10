import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.sell_outlined, color: AppColors.blue, size: 30),
          const SizedBox(width: 12),
          Container(width: 1, height: 40, color: AppColors.border),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STUDENT10 applied',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '10% discount on items',
                  style: TextStyle(color: AppColors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          const Icon(Icons.check_circle, color: AppColors.blue, size: 34),
        ],
      ),
    );
  }
}
