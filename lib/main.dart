import 'package:arckbook/screen/home_screen.dart';
import 'package:arckbook/screen/widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          surfaceTintColor:
              Colors.transparent, // Disables the tint effect in Material 3
        ),
      ),
      home: const BottomNavbarScreen(),
    );
  }
}
