import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/pet_detail_screen.dart';
import 'screens/diary_screen.dart';
import 'screens/register_screen.dart';


void main() {
  runApp(const PetDiaryApp());
}


/// Root utama aplikasi Pet Diary.
/// Mengatur tema warna global dan navigasi antar halaman.
class PetDiaryApp extends StatelessWidget {
  const PetDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Diary',

      /// ===== Tema Utama Aplikasi =====
      theme: ThemeData(
        // Warna utama: hijau toska modern
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00BFA5)),

        // Warna latar belakang seluruh scaffold
        scaffoldBackgroundColor: Colors.white,

        // Font utama yang digunakan di seluruh app
        fontFamily: 'Roboto',

        // Gaya AppBar global
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Color(0xFF00BFA5)),
          titleTextStyle: TextStyle(
            color: Color(0xFF00BFA5),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),

        // Gaya tombol (ElevatedButton) global
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00BFA5),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),

      debugShowCheckedModeBanner: false, // Hilangkan label "debug"

      /// ===== Rute Navigasi =====
      // Halaman pertama saat aplikasi dijalankan
      initialRoute: '/login',

      // Daftar rute ke seluruh halaman
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/petDetail': (context) => const PetDetailScreen(),
        '/diary': (context) => const DiaryScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}
