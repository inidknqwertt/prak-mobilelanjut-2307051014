import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8FF), // biru muda lembut
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
              radius: 18,
            ),
            SizedBox(width: 10),
            Text(
              'Dashboard',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black87),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications_none, color: Colors.black54),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sapaan
            const Text(
              'Selamat Datang 👋',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const Text(
              'Nilam Dayu Kesuma',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            // Saldo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E88FF), Color(0xFF207DFF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.account_balance_wallet_outlined,
                          color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Saldo Saat Ini',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 1.234.567',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Lihat Detail Saldo'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Menu cepat utama
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _quickMenu(
                    icon: Icons.add_card_outlined,
                    title: 'Top Up',
                    color: const Color(0xFF1E88FF)),
                _quickMenu(
                    icon: Icons.send_outlined,
                    title: 'Transfer',
                    color: const Color(0xFF1E88FF)),
                _quickMenu(
                    icon: Icons.qr_code_scanner_outlined,
                    title: 'Bayar',
                    color: const Color(0xFF1E88FF)),
                _quickMenu(
                    icon: Icons.account_balance_outlined,
                    title: 'Tarik',
                    color: const Color(0xFF1E88FF)),
              ],
            ),

            const SizedBox(height: 24),

            // Layanan lain (Grid)
            const Text(
              'Layanan Lain',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 0.9,
              children: [
                _quickMenu(icon: Icons.history, title: 'History', color: Colors.orange),
                _quickMenu(icon: Icons.card_giftcard, title: 'Rewards', color: Colors.purple),
                _quickMenu(icon: Icons.receipt_long, title: 'Tagihan', color: Colors.teal),
                _quickMenu(icon: Icons.confirmation_num_outlined, title: 'Voucher', color: Colors.pink),
                _quickMenu(icon: Icons.savings_outlined, title: 'Investasi', color: Colors.indigo),
                _quickMenu(icon: Icons.shield_outlined, title: 'Asuransi', color: Colors.green),
                _quickMenu(icon: Icons.payment_outlined, title: 'PayLater', color: Colors.brown),
                _quickMenu(icon: Icons.more_horiz, title: 'Lainnya', color: Colors.grey),
              ],
            ),

            const SizedBox(height: 40),
            // catatan: bagian promo/transaksi sudah dihapus
          ],
        ),
      ),
    );
  }

  Widget _quickMenu(
      {required IconData icon, required String title, required Color color}) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {}, // aksi
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(14),
            child: Icon(icon, color: color),
          ),
          const SizedBox(height: 6),
          Text(title,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
