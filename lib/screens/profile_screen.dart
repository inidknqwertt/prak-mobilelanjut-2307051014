import 'package:flutter/material.dart';

/// Halaman Profil Pengguna
/// Menampilkan informasi akun, kontak, dan tombol untuk kembali / logout.
/// Tema: Clean, modern, dengan warna hijau toska (#00BFA5).
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Warna latar belakang utama
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xFF00BFA5),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: Color(0xFF00BFA5)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // 📸 Foto profil dari folder assets
            CircleAvatar(
              radius: 60,
              backgroundImage: const AssetImage('assets/images/profile.png'),
              backgroundColor: const Color(0xFFE0F2F1), // hijau muda lembut
            ),
            const SizedBox(height: 16),

            // 🧍 Nama dan bio pengguna
            const Text(
              'Nilam Dayu Kesuma',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00BFA5),
              ),
            ),
            const Text(
              'Cat & Rabbit Lover',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
            const SizedBox(height: 30),

            // ✉️ Informasi kontak (Email)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 3,
              child: const ListTile(
                leading: Icon(Icons.email, color: Color(0xFF00BFA5)),
                title: Text('nldksa615@gmail.com'),
              ),
            ),
            const SizedBox(height: 10),

            // 📞 Informasi kontak (Nomor Telepon)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 3,
              child: const ListTile(
                leading: Icon(Icons.phone, color: Color(0xFF00BFA5)),
                title: Text('+62 877 9529 5601'),
              ),
            ),
            const Spacer(),

            // 🔙 Tombol kembali ke Dashboard
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00BFA5),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 3,
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                'Back to Dashboard',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),

            // 🚪 Tombol Logout (warna merah lembut)
            ElevatedButton.icon(
              onPressed: () {
                // Navigasi ke halaman Login dan hapus semua halaman sebelumnya
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (Route<dynamic> route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 3,
              ),
              icon: const Icon(Icons.logout),
              label: const Text(
                'Logout',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
