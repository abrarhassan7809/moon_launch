import 'package:flutter/material.dart';
import 'package:moon_launch/views/home_screen.dart';
import 'package:moon_launch/views/token_screen.dart';
import 'package:moon_launch/widgets/custom_bottom_navbar.dart';
import '../views/profile_screen.dart';
import '../views/wallet_screen.dart';
import 'notifiers.dart';

List<Widget> pages = [
  HomeScreen(),    // Home page
  WalletScreen(),  // Wallet page
  TokenScreen(),   // Token page
  ProfileScreen(), // Profile page
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
