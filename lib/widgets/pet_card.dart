import 'package:flutter/material.dart';
import '../models/pet.dart';

/// Widget tampilan kartu hewan di Dashboard.
/// Desain clean, modern, dengan warna utama hijau toska (#00BFA5).
class PetCard extends StatelessWidget {
  final Pet pet;            // Data hewan peliharaan
  final VoidCallback onTap; // Aksi ketika kartu diklik

  const PetCard({super.key, required this.pet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Klik kartu → buka halaman detail
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white, // Latar belakang putih bersih
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            // Bayangan lembut agar terlihat seperti kartu modern
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // 🐾 Gambar hewan di sisi kiri
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image.asset(
                pet.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),

            // 📋 Informasi singkat tentang hewan
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nama hewan
                    Text(
                      pet.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00BFA5), // Hijau toska
                      ),
                    ),

                    // Jenis hewan (cat / rabbit)
                    Text(
                      pet.type,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 4),

                    // Umur hewan
                    Text(
                      '${pet.age} years old',
                      style: const TextStyle(
                        color: Color(0xFF00796B), // Toska lebih gelap
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ➡️ Ikon panah ke kanan
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF00BFA5),
              size: 20,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
