import 'package:flutter/material.dart';

class AdminPanelPage extends StatelessWidget {
  const AdminPanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dataPresensi = [
      {'nama': 'Anjelika Jaya', 'tanggal': '27/5/2025', 'status': 'Hadir'},
      {'nama': 'Aini Johana', 'tanggal': '27/5/2025', 'status': 'Hadir'},
      {'nama': 'Bianka Laila', 'tanggal': '27/5/2025', 'status': 'Hadir'},
      {'nama': 'Cindy Nazula', 'tanggal': '27/5/2025', 'status': 'Hadir'},
      {'nama': 'Dini Uswatun', 'tanggal': '27/5/2025', 'status': 'Hadir'},
    ];

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

          const SizedBox(height: 12),
          const Text(
            'Kelola Karyawan & Laporan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'REKAP PRESENSI KARYAWAN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 16),

          Expanded(
            child: ListView.builder(
              itemCount: dataPresensi.length,
              itemBuilder: (context, index) {
                final item = dataPresensi[index];
                return ListTile(
                  title: Text('${index + 1}. ${item['nama']}'),
                  subtitle: Text(item['tanggal'] ?? ''),
                  trailing: Text(item['status'] ?? ''),
                );
              },
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            child: ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: const Icon(Icons.download),
              label: const Text('UNDUH LAPORAN BENTUK EXCEL'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 12),
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
