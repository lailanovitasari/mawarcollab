import 'package:flutter/material.dart';
import 'package:mawarcollab/dashboard_page.dart';
import 'dashboard_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SuccessTransitionPage extends StatelessWidget {
  const SuccessTransitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/images/ilustrasimawar1.png',
      ), // ganti gambar jika perlu
      backgroundColor: Colors.pink.shade100,
      nextScreen: const DashboardPage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      duration: 1200,
      animationDuration: const Duration(milliseconds: 800),
      splashIconSize: 200,
    );
  }
}
