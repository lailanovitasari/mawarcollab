import 'package:flutter/material.dart';
import 'user_data.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  String profileName = 'Pengguna Mawar';

  @override
  void initState() {
    super.initState();
    final currentUser = UserData.users.last;
    emailController = TextEditingController(text: currentUser['email'] ?? '');
    passwordController = TextEditingController(
      text: currentUser['password'] ?? '',
    );
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        final user = UserData.users.last;
        user['email'] = emailController.text.trim();
        user['password'] = passwordController.text;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profil berhasil diperbarui.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile_default.png'),
            ),
            const SizedBox(height: 10),
            Text(
              profileName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Email wajib diisi'
                        : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(labelText: 'Sandi'),
                    obscureText: true,
                    validator: (value) => value == null || value.isEmpty
                        ? 'Sandi wajib diisi'
                        : null,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _saveProfile,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Simpan Perubahan'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
