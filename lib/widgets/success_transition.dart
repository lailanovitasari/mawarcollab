import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import '../pages/dashboard.dart';
import 'package:page_transition/page_transition.dart';

class SuccessTransition extends StatelessWidget {
  const SuccessTransition({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/success_wave.gif', height: 120),
          const SizedBox(height: 16),
          const Text(
            "Login Berhasil!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: const DashboardPage(),
      splashIconSize: 250,
      duration: 1800,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
