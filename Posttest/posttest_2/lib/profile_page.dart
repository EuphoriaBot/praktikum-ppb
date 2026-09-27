import 'package:flutter/material.dart';

import 'plants_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Scaffold sebagai kerangka halaman Profile.
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F2),

      // Widget SafeArea agar isi tidak tertutup area sistem.
      body: SafeArea(
        // Widget SingleChildScrollView agar halaman dapat di-scroll.
        child: SingleChildScrollView(
          // Widget Padding memberi jarak pada halaman.
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

            // Widget Column menyusun isi halaman secara vertikal.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Widget Text menampilkan judul halaman.
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 24),

                // Widget Container membuat bagian profil utama.
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFF355B43),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // Widget Column menyusun informasi profil.
                  child: Column(
                    children: [
                      // Widget ClipRRect membuat gambar melengkung.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),

                        // Widget Image menampilkan gambar profil.
                        child: Image.asset(
                          'assets/images/CrazyDave.webp',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(height: 14),

                      // Widget Text menampilkan nama.
                      const Text(
                        'Crazy Dave',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(height: 5),

                      // Widget Text menampilkan keterangan profil.
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

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 26),

                // Widget Text menampilkan judul informasi.
                const Text(
                  'Garden Information',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 14),

                // Widget Container membuat informasi jumlah tanaman.
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(14),
                  ),

                  // Widget Row menyusun icon dan informasi.
                  child: Row(
                    children: [
                      // Widget Icon menampilkan icon tanaman.
                      const Icon(Icons.eco, color: Color(0xFF42694D)),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(width: 14),

                      // Widget Expanded membuat teks memenuhi ruang.
                      const Expanded(
                        // Widget Text menampilkan informasi tanaman.
                        child: Text(
                          'Total Plants',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),

                      // Widget Text menampilkan jumlah tanaman.
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

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 12),

                // Widget Container membuat informasi tugas.
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(14),
                  ),

                  // Widget Row menyusun icon dan informasi.
                  child: Row(
                    children: [
                      // Widget Icon menampilkan icon air.
                      const Icon(Icons.water_drop, color: Color(0xFF68765C)),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(width: 14),

                      // Widget Expanded membuat teks memenuhi ruang.
                      const Expanded(
                        // Widget Text menampilkan informasi tugas.
                        child: Text(
                          'Care Tasks Today',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),

                      // Widget Text menampilkan jumlah tugas.
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

      // Widget NavigationBar untuk perpindahan halaman.
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 2,

        onDestinationSelected: (index) {
          // Kembali ke Home.
          if (index == 0) {
            Navigator.pop(context);
          }

          // Membuka halaman Plants.
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PlantsPage()),
            );
          }
        },

        destinations: const [
          // Widget NavigationDestination menu Home.
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),

          // Widget NavigationDestination menu Plants.
          NavigationDestination(icon: Icon(Icons.eco), label: 'Plants'),

          // Widget NavigationDestination menu Profile.
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
