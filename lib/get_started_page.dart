import 'package:flutter/material.dart';
import 'login_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header merah
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              color: const Color(0xFF8B0000),
              child: const Text(
                'Mawar Group',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Cursive',
                  color: Colors.amber,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Gambar ilustrasi
            SizedBox(
              height: 200,
              child: Image.asset(
                'assets/images/illustration.png', // Pastikan gambar ini ada dan sudah didaftarkan di pubspec.yaml
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),

            // Tombol Get Started
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Navigasi ke LoginPage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'GET STARTED',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.double_arrow_rounded),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
