import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9), // warna latar belakang
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header merah dengan teks
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              color: const Color(0xFF8B0000), // warna merah tua
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

            // Gambar ilustrasi (ganti dengan asset Anda)
            SizedBox(
              height: 200,
              child: Image.asset(
                'assets/images/illustration.png', // pastikan file ini ada di asset
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
                // Navigasi ke halaman berikutnya
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
