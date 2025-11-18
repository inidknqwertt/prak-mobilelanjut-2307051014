import 'package:flutter/material.dart';
import 'package:myapp/models/pet.dart';
import 'package:myapp/widgets/pet_card.dart';

/// ===============================================================
/// DashboardScreen
/// ---------------------------------------------------------------
/// Halaman utama setelah login yang menampilkan daftar hewan peliharaan.
/// Tema: putih bersih + aksen hijau toska (#00BFA5)
/// Fitur:
///  - Menampilkan list data dummy kucing & kelinci
///  - Navigasi ke halaman Detail Hewan
///  - Navigasi ke halaman Profile
///  - Tombol menuju halaman Pet Diary
/// ===============================================================
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  /// Data dummy untuk hewan peliharaan
  final List<Pet> pets = const [
    Pet(
      name: 'Luna',
      type: 'Persian Cat',
      age: 3,
      image: 'assets/images/cat1.png',
      description:
          'Luna adalah kucing Persia yang lembut dan suka tidur di sofa hangat.',
    ),
    Pet(
      name: 'Mochi',
      type: 'Anggora Cat',
      age: 2,
      image: 'assets/images/cat2.png',
      description: 'Mochi aktif dan suka bermain bola benang setiap sore.',
    ),
    Pet(
      name: 'Coco',
      type: 'Mini Lop Rabbit',
      age: 1,
      image: 'assets/images/rabbit1.png',
      description: 'Coco suka wortel dan melompat-lompat di taman belakang.',
    ),
    Pet(
      name: 'Nana',
      type: 'Dutch Rabbit',
      age: 2,
      image: 'assets/images/rabbit2.png',
      description:
          'Nana adalah kelinci ramah yang suka digendong dan dielus lembut.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar putih bersih
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'My Pets',
          style: TextStyle(
            color: Color(0xFF00BFA5), // Warna hijau toska modern
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF00BFA5)),

        // Tombol profil di pojok kanan atas
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            color: const Color(0xFF00BFA5),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
        ],
      ),

      /// ===== BODY: Konten utama halaman =====
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sambutan di bagian atas
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Welcome Back! 👋',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00BFA5),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Here are your lovely cats and rabbits:',
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
          ),
          const SizedBox(height: 16),

          // Tombol menuju halaman Pet Diary
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/diary');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00BFA5),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              icon: const Icon(Icons.book_outlined),
              label: const Text('Open Pet Diary', style: TextStyle(fontSize: 18)),
            ),
          ),
          const SizedBox(height: 16),

          // Daftar hewan peliharaan (ListView)
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: pets.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: PetCard(
                    pet: pets[index],
                    // Navigasi ke halaman detail dengan membawa data Pet
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/petDetail',
                      arguments: pets[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
