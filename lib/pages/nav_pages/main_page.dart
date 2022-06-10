import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_tutorial_nft/pages/nav_pages/home_page.dart';
import 'package:yt_tutorial_nft/pages/nav_pages/profile_page.dart';
import 'package:yt_tutorial_nft/pages/nav_pages/search_page.dart';
import 'package:yt_tutorial_nft/pages/nav_pages/wallet_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List Pages = [
    HomePage(),
    SearchPage(),
    WalletPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.category5),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.search_normal_14),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Wallet',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.wallet_2),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.user),
            ),
          ),
        ],
      ),
    );
  }
}
