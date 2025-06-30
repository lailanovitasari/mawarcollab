import 'package:flutter/material.dart';

// Import halaman-halaman yang digunakan
import 'get_started_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'user_data.dart'; // model, tidak perlu ditaruh di routes
import 'user_page.dart';
import 'dashboard_page.dart';
import 'presensi_page.dart';
import 'riwayat_presensi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mawar Group App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Sans', 
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const GetStartedPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/presensi': (context) => const PresensiPage(),
        '/riwayat': (context) => const RiwayatPresensiPage(),
        '/user': (context) => const UserPage(),
      },
    );
  }
}
