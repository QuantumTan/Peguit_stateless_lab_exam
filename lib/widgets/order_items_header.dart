import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class OrderItemsHeader extends StatelessWidget {
  final int itemCount;

  const OrderItemsHeader({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'Order Items',
          style: TextStyle(
            color: AppColors.navy,
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          '$itemCount items',
          style: const TextStyle(color: AppColors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
