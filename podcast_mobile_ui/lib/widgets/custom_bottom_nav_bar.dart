import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:podcast_mobile_ui/screens/discover_screen.dart';
import 'package:podcast_mobile_ui/screens/leaderboard_screen/leaderboard_screen.dart';
import 'package:podcast_mobile_ui/screens/settings_screen.dart';
import 'package:podcast_mobile_ui/screens/starred_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DiscoverScreen(),
    StarredScreen(),
    LeaderboardScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            color: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.black,
            tabs: [
              const GButton(
                icon: CarbonIcons.explore,
                text: 'Discover',
              ),
              const GButton(
                icon: CarbonIcons.star,
                text: 'Starred',
              ),
              GButton(
                icon: MdiIcons.license,
                text: 'Leaderboard',
              ),
              const GButton(
                icon: CarbonIcons.settings,
                text: 'Settings',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
