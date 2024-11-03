import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/screen/bookmark_screen.dart';
import 'package:arckbook/theme/colors.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'user_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  _BottomNavbarScreenState createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _selectedIndex = 0;
  BookModel? recentBook;

  void updateRecentBook(BookModel book) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        recentBook = book;
      });
    });
  }

  List<Widget> get _screens => [
        HomeScreen(updateRecentBook: updateRecentBook, recentBook: recentBook),
        const BookmarkScreen(),
        const UserScreen(),
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
