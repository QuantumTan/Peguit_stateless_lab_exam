import 'package:flutter/material.dart';

import 'core/app_colors.dart';
import 'widgets/cart_app_bar.dart';
import 'widgets/cart_item_card.dart';
import 'widgets/delivery_card.dart';
import 'widgets/discount_banner.dart';
import 'widgets/intro_section.dart';
import 'widgets/order_items_header.dart';
import 'widgets/payment_summary.dart';
import 'widgets/place_order_button.dart';

const String studentName = 'Jonathan Jr. H. Peguit';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.pageBg,
      appBar: CartAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntroSection(),
              SizedBox(height: 16),
              DeliveryCard(name: studentName, address: 'Matina, Davao City'),
              SizedBox(height: 20),
              OrderItemsHeader(itemCount: 3),
              SizedBox(height: 12),
              CartItemCard(
                name: 'Wireless Mouse',
                price: 'PHP 450.00',
                quantity: 1,
                icon: Icons.mouse_outlined,
              ),
              SizedBox(height: 12),
              CartItemCard(
                name: 'USB-C Hub',
                price: 'PHP 850.00',
                quantity: 1,
                icon: Icons.usb,
              ),
              SizedBox(height: 12),
              CartItemCard(
                name: 'Laptop Stand',
                price: 'PHP 700.00',
                quantity: 1,
                icon: Icons.laptop_mac,
              ),
              SizedBox(height: 16),
              DiscountBanner(),
              SizedBox(height: 16),
              PaymentSummary(),
              SizedBox(height: 16),
              PlaceOrderButton(),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
