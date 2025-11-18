import 'package:flutter/material.dart';
import 'package:myapp/models/pet.dart';

/// Halaman detail hewan peliharaan (Pet Detail Page)
/// Menampilkan informasi lengkap tentang kucing/kelinci yang dipilih.
/// Desain clean, modern, dan warna tema konsisten (#00BFA5 hijau toska).
class PetDetailScreen extends StatelessWidget {
  const PetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil data Pet yang dikirim melalui Navigator dari Dashboard
    final Pet pet = ModalRoute.of(context)!.settings.arguments as Pet;

    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih bersih
      appBar: AppBar(
        title: Text(
          pet.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF00BFA5), // Warna hijau toska
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: Color(0xFF00BFA5)),
      ),

      // Isi halaman detail
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 🐾 Gambar besar hewan di bagian atas
          Container(
            width: double.infinity,
            height: 260,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              image: DecorationImage(
                image: AssetImage(pet.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 📝 Nama dan jenis hewan
          Text(
            pet.name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00BFA5),
            ),
          ),
          Text(
            pet.type,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 12),

          // 📆 Umur hewan
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFE0F2F1), // Hijau muda lembut
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${pet.age} years old',
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF00796B),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 📖 Deskripsi hewan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              pet.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),

          // 🔙 Tombol kembali ke dashboard
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00BFA5),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(200, 50),
                elevation: 3,
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                'Back',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
