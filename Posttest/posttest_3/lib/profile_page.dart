/*
Daripada saya kasih comment deskripsi di setiap widget satu per satu,
saya akan kasih rangkuman widget yang digunakan pada file ini.

Daftar Widget yang dipakai :

1. StatelessWidget
Widget yang sifatnya statis atau tampilannya tidak berubah sendiri

2. Scaffold
Sebagai kerangka utama halaman Profile

3. SafeArea
Untuk menjaga isi halaman agar tidak tertutup area sistem HP
seperti status bar

4. SingleChildScrollView
Untuk membuat halaman bisa di scroll apabila isi halaman
lebih panjang dari ukuran layar

5. Padding
Untuk memberikan jarak pada bagian dalam halaman agar tampilan
tidak terlalu rapat dengan sisi layar

6. Column
Untuk menyusun beberapa widget secara vertikal

7. Text
Untuk menampilkan informasi berupa teks

8. SizedBox
Untuk memberikan jarak antar widget secara horizontal maupun vertikal

9. Container
Sebagai widget pembungkus yang dapat diatur warna, padding,
border, dll

10. ClipRRect
Untuk membuat gambar profil memiliki bentuk sudut yang melengkung

11. Image.asset
Untuk menampilkan gambar

12. Row
Untuk menyusun beberapa widget secara horizontal

13. Icon
Untuk menampilkan icon 

14. Expanded
Untuk membuat widget child mengisi sisa ruang kosong yang tersedia

15. NavigationBar
Untuk membuat menu navigasi utama di bagian bawah aplikasi

16. NavigationDestination
Untuk membuat pilihan menu pada NavigationBar
*/

import 'package:flutter/material.dart';

import 'plants_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F2),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                const SizedBox(height: 24),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFF355B43),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),

                        child: Image.asset(
                          'assets/images/CrazyDave.webp',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 14),

                      const Text(
                        'Crazy Dave',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text(
                        'Garden Owner',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFD5E2D7),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 26),

                const Text(
                  'Garden Information',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                const SizedBox(height: 14),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: Row(
                    children: [
                      const Icon(Icons.eco, color: Color(0xFF42694D)),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Text(
                          'Total Plants',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),

                      const Text(
                        '5',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF21382A),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: Row(
                    children: [
                      const Icon(Icons.water_drop, color: Color(0xFF68765C)),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Text(
                          'Care Tasks Today',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),

                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF21382A),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 2,

        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PlantsPage()),
            );
          }
        },

        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),

          NavigationDestination(icon: Icon(Icons.eco), label: 'Plants'),

          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
