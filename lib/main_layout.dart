import 'package:flutter/material.dart';
import 'package:recipes/features/main_layout/home/ui/screens/home_screen.dart';

import 'core/constants.dart';
import 'features/main_layout/favourite/ui/screens/favourite_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [const HomeScreen(), const FavouriteScreen()];
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: Colors.transparent,
        title: Text(
          "Food Recipes",
          style: TextStyle(fontSize: w * 0.08, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          selectedItemColor: Colors.white.withOpacity(0.8),
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          elevation: 0,
          selectedLabelStyle:
              TextStyle(fontSize: w * 0.03, fontWeight: FontWeight.bold),
          backgroundColor: Colors.green.withOpacity(0.9),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: w * 0.07,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: w * 0.07,
                ),
                label: "Favourite"),
          ]),
      body: screens[selectedIndex],
    );
  }
}
