/*
Daripada saya kasih comment deskripsi widgetnya satu satu di beberapa baris kode yang nantinya
akan terlihat berantakan, mending saya akan kasih rangkuman aja

Daftar Widget yang dipakai :

1. StatelessWidget
Widget yang punya sifat statis, biasanya dipake sebagai custom widget yang tampilannya
tidak berubah sendiri, di kasus ini saya pakai untuk buat plant card

2. Container
Sebagai widget pembungkus yang bisa di edit edit, kayak atur ukuran, kasih jarak, kalau di html 
Container ini mirip <div> 

3. Row
Untuk nyusun beberapa widget atau informasi secara horizontal

4. Image.asset
Untuk nampilin gambar

5. SizedBox
Untuk kasih jarak antar widget

6. Expanded
Untuk memaksa widget child agar mengisis seluruh ruang kosong yang tersisa 

7. Column
Untuk nyusun beberapa widget atau informasi secara vertikal

8. Text
Untuk menampilkan isi informasi berupa teks

9. Icon
Untuk menampilkan icon

10. Scaffold
Sebagai widget utama yang menyediakan strutur dasarnya material design

11. SafeArea
Untuk melingungi konten aplikasi agar tidak terpotong oleh elemen fisik layar

12. Padding
Untuk kasih jarak di dalam sekililing widget child nya

13. TextField
Untuk menerima input dari user

14. MaterialApp
Menjadi pembungkus utama aplikasi dan menentukan halaman awal

15. SingleChildScrollView
Agar bisa di Scroll

16. NavigationBar dan NavigationDestination
Agar bisa masuk ke halaman lain

17. ClipRRect
Agar gambarnya punya sudut melengkung (bundar)

18. HomePage
Custom widget sebagai halaman utama aplikasi
*/

import 'package:flutter/material.dart';

import 'plants_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget MaterialApp sebagai pembungkus utama aplikasi.
    return MaterialApp(
      title: 'Crazy Dave Garden',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF355B43)),
      ),

      // Widget HomePage sebagai halaman pertama.
      home: const HomePage(),
    );
  }
}

// Halaman Home aplikasi.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Scaffold sebagai kerangka halaman.
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F2),

      // Widget SafeArea agar isi tidak tertutup area sistem.
      body: SafeArea(
        // Widget SingleChildScrollView agar halaman dapat di-scroll.
        child: SingleChildScrollView(
          // Widget Padding memberi jarak pada halaman.
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

            // Widget Column menyusun seluruh isi secara vertikal.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Widget Row menyusun nama aplikasi dan gambar.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Widget Column menyusun nama aplikasi.
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Widget Text menampilkan nama aplikasi.
                        const Text(
                          'Crazy Dave Garden',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF21382A),
                          ),
                        ),

                        // Widget SizedBox memberi jarak.
                        const SizedBox(height: 3),
                      ],
                    ),

                    // Widget ClipRRect membuat sudut gambar melengkung.
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),

                      // Widget Image menampilkan gambar Crazy Dave.
                      child: Image.asset(
                        'assets/images/CrazyDave.webp',
                        width: 52,
                        height: 52,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 24),

                // Widget Container sebagai hero card.
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFF355B43),
                    borderRadius: BorderRadius.circular(24),
                  ),

                  // Widget Row menyusun tulisan dan gambar.
                  child: Row(
                    children: [
                      // Widget Expanded membuat tulisan mengisi ruang.
                      Expanded(
                        // Widget Column menyusun isi hero card.
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Widget Text menampilkan judul hero card.
                            const Text(
                              'Nice Garden',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(height: 10),

                            // Widget Text menampilkan informasi.
                            const Text(
                              '2 plants need your care today',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFD5E2D7),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(height: 18),

                            // Widget Container membuat label.
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1E9C9),
                                borderRadius: BorderRadius.circular(20),
                              ),

                              // Widget Text menampilkan label.
                              child: const Text(
                                'Today\'s Focus',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF42523B),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(width: 12),

                      // Widget ClipRRect membuat gambar melengkung.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(22),

                        // Widget Image menampilkan gambar greenhouse.
                        child: Image.asset(
                          'assets/images/Greenhouse_pexels.jpg',
                          width: 100,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 22),

                // Widget Container membungkus kolom pencarian.
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFE0E5DE)),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  // Widget TextField untuk pencarian tanaman.
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search your plants',
                      hintStyle: const TextStyle(color: Color(0xFFA1A7A1)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 18),
                      border: InputBorder.none,

                      // Widget Padding memberi jarak pada icon.
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 4),

                        // Widget Icon menampilkan icon pencarian.
                        child: Icon(Icons.search, color: Color(0xFF607065)),
                      ),
                    ),
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 28),

                // Widget Text menampilkan judul Garden Overview.
                const Text(
                  'Garden Overview',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 14),

                // Widget Row menyusun dua overview card.
                // Widget Row untuk menyusun dua Garden Overview card.
                Row(
                  children: [
                    // Widget Expanded agar card My Plants mengisi setengah ruang.
                    Expanded(
                      child: Container(
                        height: 105,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDEADD),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: const Color(0xFFD0DFD1)),
                        ),

                        // Widget Row menyusun icon, angka, dan teks secara horizontal.
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Widget Container sebagai tempat icon.
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),

                              // Widget Icon menampilkan icon tanaman.
                              child: const Icon(
                                Icons.eco,
                                size: 23,
                                color: Color(0xFF42694D),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(width: 8),

                            // Widget Text menampilkan jumlah tanaman.
                            const Text(
                              '5',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF21382A),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(width: 8),

                            // Widget Expanded agar tulisan menyesuaikan sisa ruang.
                            const Expanded(
                              child: Text(
                                'My Plants',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF415648),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Widget SizedBox memberi jarak antar card.
                    const SizedBox(width: 12),

                    // Widget Expanded agar card Care Tasks mengisi setengah ruang.
                    Expanded(
                      child: Container(
                        height: 105,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0E8CE),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: const Color(0xFFE5DDBF)),
                        ),

                        // Widget Row menyusun icon, angka, dan teks secara horizontal.
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Widget Container sebagai tempat icon.
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),

                              // Widget Icon menampilkan icon perawatan.
                              child: const Icon(
                                Icons.water_drop,
                                size: 23,
                                color: Color(0xFF68765C),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(width: 8),

                            // Widget Text menampilkan jumlah tugas.
                            const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF21382A),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(width: 8),

                            // Widget Expanded agar tulisan menyesuaikan sisa ruang.
                            const Expanded(
                              child: Text(
                                'Care Tasks',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF565B45),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 30),

                // Widget Row menyusun judul Featured Plant.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Widget Text menampilkan judul.
                    const Text(
                      'Featured Plant',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21382A),
                      ),
                    ),

                    // Widget Text menampilkan kategori.
                    const Text(
                      'Indoor',
                      style: TextStyle(fontSize: 12, color: Color(0xFF57705E)),
                    ),
                  ],
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 14),

                // Widget Container membuat Featured Plant card.
                Container(
                  padding: const EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFE0E5DE)),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // Widget Row menyusun gambar dan informasi.
                  child: Row(
                    children: [
                      // Widget ClipRRect membuat gambar melengkung.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),

                        // Widget Image menampilkan Monstera.
                        child: Image.asset(
                          'assets/images/Monstera_pexels.jpg',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(width: 17),

                      // Widget Expanded membuat informasi memenuhi ruang.
                      Expanded(
                        // Widget Column menyusun informasi tanaman.
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Widget Text menampilkan nama tanaman.
                            const Text(
                              'Monstera',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF21382A),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(height: 4),

                            // Widget Text menampilkan kategori.
                            const Text(
                              'Indoor Plant',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF899089),
                              ),
                            ),

                            // Widget SizedBox memberi jarak.
                            const SizedBox(height: 13),

                            // Widget Row menyusun icon dan jadwal.
                            Row(
                              children: [
                                // Widget Icon menampilkan icon air.
                                const Icon(
                                  Icons.water_drop,
                                  size: 17,
                                  color: Color(0xFF52735A),
                                ),

                                // Widget SizedBox memberi jarak.
                                const SizedBox(width: 5),

                                // Widget Text menampilkan jadwal.
                                const Text(
                                  'Water today',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF52735A),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 30),

                // Widget Text menampilkan judul Today's Care.
                const Text(
                  'Today\'s Care',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 14),

                // Widget Container membuat card Monstera.
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  // Widget Row menyusun gambar dan informasi.
                  child: Row(
                    children: [
                      // Widget ClipRRect membuat gambar melengkung.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),

                        // Widget Image menampilkan Monstera.
                        child: Image.asset(
                          'assets/images/Monstera_pexels.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(width: 13),

                      // Widget Expanded membuat nama memenuhi ruang.
                      const Expanded(
                        // Widget Text menampilkan nama tanaman.
                        child: Text(
                          'Monstera',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF263B2D),
                          ),
                        ),
                      ),

                      // Widget Text menampilkan jadwal.
                      const Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF587361),
                        ),
                      ),
                    ],
                  ),
                ),

                // Widget SizedBox memberi jarak.
                const SizedBox(height: 10),

                // Widget Container membuat card Basil.
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  // Widget Row menyusun gambar dan informasi.
                  child: Row(
                    children: [
                      // Widget ClipRRect membuat gambar melengkung.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),

                        // Widget Image menampilkan Basil.
                        child: Image.asset(
                          'assets/images/Basil_pexels.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Widget SizedBox memberi jarak.
                      const SizedBox(width: 13),

                      // Widget Expanded membuat nama memenuhi ruang.
                      const Expanded(
                        // Widget Text menampilkan nama tanaman.
                        child: Text(
                          'Basil',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF263B2D),
                          ),
                        ),
                      ),

                      // Widget Text menampilkan jadwal.
                      const Text(
                        'Tomorrow',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF747A5D),
                        ),
                      ),
                    ],
                  ),
                ),

                // Widget SizedBox memberi jarak bagian bawah.
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),

      // Widget NavigationBar untuk berpindah halaman.
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 0,

        onDestinationSelected: (index) {
          // Membuka halaman Plants.
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PlantsPage()),
            );
          }

          // Membuka halaman Profile.
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
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
