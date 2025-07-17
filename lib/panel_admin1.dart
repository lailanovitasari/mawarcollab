import 'package:flutter/material.dart';
import 'admin_panel_page.dart'; 

class PanelAdmin1 extends StatefulWidget {
  const PanelAdmin1({super.key});

  @override
  State<PanelAdmin1> createState() => _PanelAdmin1State();
}

class _PanelAdmin1State extends State<PanelAdmin1> {
  final TextEditingController _passwordController = TextEditingController();
  final String _adminPassword = 'admin123'; 
  void _checkPassword() {
    if (_passwordController.text == _adminPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const AdminPanelPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Kata sandi salah')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2F0),
      body: Column(
        children: [
          
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24),
            color: const Color(0xFF8B0000),
            child: const Text(
              'Mawar Group',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Cursive',
                color: Colors.amber,
              ),
            ),
          ),

          const SizedBox(height: 40),

          const Text(
            'Kelola Karyawan & Laporan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              'Harap anda masukkan kata sandi terlebih dahulu untuk mengakses data',
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Kata Sandi Admin',
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.arrow_circle_right),
                  onPressed: _checkPassword,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.admin_panel_settings), label: 'Admin'),
        ],
      ),
    );
  }
}
