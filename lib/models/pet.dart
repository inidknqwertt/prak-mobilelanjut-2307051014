/// Model data untuk menyimpan informasi hewan peliharaan
class Pet {
  final String name;        // Nama hewan
  final String type;        // Jenis ras (misal: Persian Cat)
  final int age;            // Umur hewan
  final String image;       // Lokasi gambar asset
  final String description; // Deskripsi singkat hewan

  const Pet({
    required this.name,
    required this.type,
    required this.age,
    required this.image,
    required this.description,
  });
}
