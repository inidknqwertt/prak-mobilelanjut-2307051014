import 'package:flutter/material.dart';

/// Halaman Pet Diary
/// Menampilkan daftar catatan harian hewan (data dummy)
/// Tema: putih + hijau toska (#00BFA5)
class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  // Data dummy untuk catatan harian
  final List<Map<String, String>> dummyDiary = const [
    {
      'title': 'Luna Makan Banyak Hari Ini',
      'date': '20 Oktober 2025',
      'content': 'Luna terlihat sangat lahap saat makan pagi. Sepertinya dia sedang bahagia sekali hari ini!'
    },
    {
      'title': 'Coco Bermain di Taman',
      'date': '19 Oktober 2025',
      'content': 'Coco melompat-lompat di taman selama 2 jam. Dia tampak senang dan aktif seperti biasa.'
    },
    {
      'title': 'Mochi Divaksin',
      'date': '18 Oktober 2025',
      'content': 'Hari ini Mochi menjalani vaksin tahunan di klinik hewan. Semua berjalan lancar tanpa takut sama sekali!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Pet Diary',
          style: TextStyle(
            color: Color(0xFF00BFA5),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: Color(0xFF00BFA5)),
      ),

      // Daftar catatan diary
      body: ListView.builder(
        itemCount: dummyDiary.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final diary = dummyDiary[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                diary['title']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF00BFA5),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    diary['date']!,
                    style: const TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    diary['content']!,
                    style: const TextStyle(color: Colors.black87, fontSize: 15, height: 1.4),
                  ),
                ],
              ),
              trailing: const Icon(Icons.pets, color: Color(0xFF00BFA5)),
            ),
          );
        },
      ),
    );
  }
}

