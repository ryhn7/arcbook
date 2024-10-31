import 'package:arckbook/screen/widget/random_progress_bar.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget recentBookSection() {
      return Column(
        children: [
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Books',
                style: getPoppinsSemiBoldStyle18(color: onyx),
              ),
              Text(
                'View All',
                style: getPoppinsRegularStyle12(color: oldSilver),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/atomic_habits.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Atomic Habits',
                      style: getPoppinsMediumStyle16(color: onyx),
                    ),
                    Text(
                      'James Clear',
                      style: getPoppinsMediumStyle12(color: oldSilver),
                    ),
                    const SizedBox(height: 52),
                    const RandomProgressBar(),
                  ],
                ),
              ),
            ],
          ),

          // const SizedBox(height: 16),
          // SizedBox(
          //   height: 200,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 5,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         width: 150,
          //         margin: const EdgeInsets.only(left: 16),
          //         decoration: BoxDecoration(
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:
            0, // Remove AppBar shadow for a cleaner look with the divider
        title: Text(
          'ArcBook',
          style: getPoppinsBoldStyle24(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            height: 1.0,
            color: Colors.grey[300], // Color of the divider
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    recentBookSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
