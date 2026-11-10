import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import 'summary_row.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: TextStyle(
              color: AppColors.navy,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 8),
          SummaryRow(label: 'Subtotal', amount: 'PHP 2,000.00'),
          SummaryRow(label: 'Discount (10%)', amount: '- PHP 200.00'),
          SummaryRow(label: 'Delivery Fee', amount: 'PHP 50.00'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(height: 1, thickness: 1, color: AppColors.border),
          ),
          SummaryRow(label: 'Total', amount: 'PHP 1,850.00', isTotal: true),
        ],
      ),
    );
  }
}
