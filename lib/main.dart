import 'package:flutter/material.dart';

import 'core/app_colors.dart';
import 'shopping_cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.blue,
        scaffoldBackgroundColor: AppColors.pageBg,
      ),
      home: const ShoppingCartPage(),
    );
  }
}
