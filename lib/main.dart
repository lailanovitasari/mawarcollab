import 'package:flutter/material.dart';
import 'get_started_page.dart'; // pastikan file ini berada di satu folder dengan main.dart

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
      home: const GetStartedPage(),
      // Untuk routing ke halaman lain bisa ditambahkan di sini nanti
      // routes: {
      //   '/login': (context) => const LoginPage(),
      //   '/register': (context) => const RegisterPage(),
      // },
    );
  }
}
