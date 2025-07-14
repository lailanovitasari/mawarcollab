import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBEFEF), 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 12.0),
          child: Text(
            'Log Out',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 25),
            decoration: const BoxDecoration(
              color: Color(0xFF8A0E0E), 
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: const Center(
              child: Text(
                'Mawar Group',
                style: TextStyle(
                  color: Color(0xFFFFD700), 
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Georgia', 
                ),
              ),
            ),
          ),

          const SizedBox(height: 60),

          
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            color: Colors.white,
            child: const Text(
              'ANDA SUDAH KELUAR DARI AKUN',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 20),

          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Oops!! Anda sudah keluar dari akun presensi online. Apabila ingin kembali masuk silahkan klik tombol dari awal.',
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
