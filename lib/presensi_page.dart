// FILE: lib/screens/presensi_page.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PresensiPage extends StatefulWidget {
  const PresensiPage({super.key});

  @override
  State<PresensiPage> createState() => _PresensiPageState();
}

class _PresensiPageState extends State<PresensiPage> {
  final List<Map<String, String>> _riwayatPresensi = [];

  String getTodayDate() {
    return DateFormat('dd MMM yyyy').format(DateTime.now());
  }

  void _presensiMasuk() {
    final date = getTodayDate();
    if (_riwayatPresensi.any(
      (e) => e['tanggal'] == date && e['status'] == 'Masuk',
    )) {
      _showSnackbar("Sudah presensi masuk hari ini");
      return;
    }
    _riwayatPresensi.add({'tanggal': date, 'status': 'Masuk'});
    _showSnackbar("Presensi masuk berhasil");
    setState(() {});
  }

  void _presensiKeluar() {
    final date = getTodayDate();
    if (_riwayatPresensi.any(
      (e) => e['tanggal'] == date && e['status'] == 'Keluar',
    )) {
      _showSnackbar("Sudah presensi keluar hari ini");
      return;
    }
    _riwayatPresensi.add({'tanggal': date, 'status': 'Keluar'});
    _showSnackbar("Presensi keluar berhasil");
    setState(() {});
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Presensi Yuk!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(getTodayDate()),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _presensiMasuk,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Presensi Masuk'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _presensiKeluar,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Presensi Keluar'),
          ),
        ],
      ),
    );
  }
}
