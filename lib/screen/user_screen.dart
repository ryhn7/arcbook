import 'package:arckbook/theme/colors.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/codings.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Profile Image
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 46,
                          backgroundImage:
                              AssetImage('assets/images/rayhan.jpeg'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'RAYHAN ILLYAS ',
                        style: getPoppinsBoldStyle20(color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Mobile App Developer',
                        style: getPoppinsRegularStyle16(color: Colors.white70),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: seaGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 8),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('Connected on LinkedIn!'),
                                duration: const Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                action: SnackBarAction(
                                  label: 'Dismiss',
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                  },
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'CONNECT',
                            style: getPoppinsMediumStyle16(color: Colors.white),
                          )),
                      const SizedBox(height: 8),
                      // Followers Count
                      const Text(
                        'linkedin.com/in/ryhnillysa',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // About Title
                  Text(
                    'ABOUT',
                    style: getPoppinsBoldStyle18(color: onyx),
                  ),
                  const SizedBox(height: 8),
                  // About Description
                  Text(
                    'Hey there! I\'m a mobile app developer with a passion for turning ideas into handy, user-friendly apps that people love. When I\'m not coding, you’ll find me exploring the latest tech trends, experimenting with new features, or simply binge-watching my favorite shows. I\'m all about creating seamless experiences and innovative solutions that make life easier – and maybe just a bit more fun! Let\'s connect and bring some exciting projects to life together!',
                    style: getPoppinsRegularStyle16(color: oldSilver).copyWith(
                      letterSpacing: 0.5,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
