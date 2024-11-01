import 'package:arckbook/theme/colors.dart';
import 'package:flutter/material.dart';

import '../detail_screen.dart';
import '../home_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  _BottomNavbarScreenState createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const DetailScreen(),
    const Center(child: Text('User Screen', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: lotion,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0
                  ? 'assets/icons/icon_home_fill.png'
                  : 'assets/icons/icon_home_outline.png',
              width: 24,
              height: 24,
            ),
            label: 'Home', // Label is still required but will be hidden
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1
                  ? 'assets/icons/icon_bookmark_fill.png'
                  : 'assets/icons/icon_bookmark_outline.png',
              width: 24,
              height: 24,
            ),
            label: 'Bookmark', // Label is still required but will be hidden
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 2
                  ? 'assets/icons/icon_user_fill.png'
                  : 'assets/icons/icon_user_outline.png',
              width: 24,
              height: 24,
            ),
            label: 'User', // Label is still required but will be hidden
          ),
        ],
        showSelectedLabels: false, 
        showUnselectedLabels: false, 
      ),
    );
  }
}
