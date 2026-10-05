/*
Daripada saya kasih comment deskripsi di setiap widget satu per satu,
saya akan kasih rangkuman widget yang digunakan pada file ini.

Daftar Widget yang dipakai :

1. StatelessWidget
Widget yang sifatnya statis atau tampilannya tidak berubah sendiri

2. StatefulWidget
Widget yang digunakan ketika ada data yang dapat berubah

3. MaterialApp
Sebagai pembungkus utama aplikasi Flutter

4. Scaffold
Sebagai kerangka utama halaman Home.

5. SafeArea
Untuk menjaga isi halaman agar tidak tertutup oleh area sistem HP
seperti status bar

6. SingleChildScrollView
Untuk membuat isi halaman bisa di scroll apabila kontennya
lebih panjang dari ukuran layar

7. Padding
Untuk memberikan jarak pada bagian dalam widget agar tampilan
tidak terlalu rapat atau menempel ke sisi layar

8. Column
Untuk menyusun beberapa widget secara vertikal

9. Row
Untuk menyusun beberapa widget secara horizontal

10. Text
Untuk menampilkan informasi berupa teks

11. SizedBox
Untuk memberikan jarak antar widget secara horizontal maupun vertikal

12. Container
Sebagai widget pembungkus yang dapat diatur warna, ukuran, padding,
border, dan bentuk sudutnya

13. ClipRRect
Untuk membuat bagian sudut gambar menjadi melengkung
sesuai nilai borderRadius yang diberikan

14. Image.asset
Untuk menampilkan gambar yang berasal dari folder assets

15. Expanded
Untuk membuat widget child mengisi sisa ruang kosong yang tersedia

16. Icon
Untuk menampilkan icon 

17. ElevatedButton
Untuk membuat tombol yang dapat ditekan

18. NavigationBar
Untuk membuat menu navigasi utama pada bagian bawah aplikasi

19. NavigationDestination
Untuk membuat masing-masing pilihan menu pada NavigationBar
*/

import 'package:flutter/material.dart';

import 'plants_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crazy Dave Garden',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF355B43)),
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int careTasks = 2;

  bool monsteraDone = false;

  bool basilDone = false;

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Crazy Dave Garden',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF21382A),
                          ),
                        ),

                        const SizedBox(height: 3),
                      ],
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),

                      child: Image.asset(
                        'assets/images/CrazyDave.webp',
                        width: 52,
                        height: 52,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFF355B43),
                    borderRadius: BorderRadius.circular(24),
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nice Garden',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 10),

                            Text(
                              careTasks == 1
                                  ? '1 plant needs your care today'
                                  : '$careTasks plants need your care today',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFFD5E2D7),
                              ),
                            ),

                            const SizedBox(height: 18),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1E9C9),
                                borderRadius: BorderRadius.circular(20),
                              ),

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

                      const SizedBox(width: 12),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(22),

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

                const SizedBox(height: 22),

                const Text(
                  'Garden Overview',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                const SizedBox(height: 14),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 105,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDEADD),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: const Color(0xFFD0DFD1)),
                        ),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),

                              child: const Icon(
                                Icons.eco,
                                size: 23,
                                color: Color(0xFF42694D),
                              ),
                            ),

                            const SizedBox(width: 8),

                            const Text(
                              '5',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF21382A),
                              ),
                            ),

                            const SizedBox(width: 8),

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

                    const SizedBox(width: 12),

                    Expanded(
                      child: Container(
                        height: 105,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0E8CE),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: const Color(0xFFE5DDBF)),
                        ),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),

                              child: const Icon(
                                Icons.water_drop,
                                size: 23,
                                color: Color(0xFF68765C),
                              ),
                            ),

                            const SizedBox(width: 8),

                            Text(
                              '$careTasks',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF21382A),
                              ),
                            ),

                            const SizedBox(width: 8),

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

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured Plant',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21382A),
                      ),
                    ),

                    const Text(
                      'Indoor',
                      style: TextStyle(fontSize: 12, color: Color(0xFF57705E)),
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                Container(
                  padding: const EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFE0E5DE)),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),

                        child: Image.asset(
                          'assets/images/Monstera_pexels.jpg',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 17),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Monstera',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF21382A),
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Indoor Plant',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF899089),
                              ),
                            ),

                            const SizedBox(height: 13),

                            Row(
                              children: [
                                const Icon(
                                  Icons.water_drop,
                                  size: 17,
                                  color: Color(0xFF52735A),
                                ),

                                const SizedBox(width: 5),

                                Text(
                                  monsteraDone
                                      ? 'Care completed'
                                      : 'Water today',
                                  style: const TextStyle(
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

                const SizedBox(height: 30),

                const Text(
                  'Today\'s Care',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                const SizedBox(height: 14),

                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/Monstera_pexels.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Monstera',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF263B2D),
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              monsteraDone ? 'Completed' : 'Water today',
                              style: TextStyle(
                                fontSize: 12,
                                color: monsteraDone
                                    ? Colors.grey
                                    : const Color(0xFF587361),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),

                      ElevatedButton(
                        onPressed: monsteraDone
                            ? null
                            : () {
                                setState(() {
                                  monsteraDone = true;
                                  careTasks--;
                                });
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF355B43),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        child: Text(
                          monsteraDone ? 'Done' : 'Mark Done',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),

                        child: Image.asset(
                          'assets/images/Basil_pexels.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Basil',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF263B2D),
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              basilDone ? 'Completed' : 'Water tomorrow',
                              style: TextStyle(
                                fontSize: 12,
                                color: basilDone
                                    ? Colors.grey
                                    : const Color(0xFF747A5D),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),

                      ElevatedButton(
                        onPressed: basilDone
                            ? null
                            : () {
                                setState(() {
                                  basilDone = true;
                                  careTasks--;
                                });
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF355B43),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        child: Text(
                          basilDone ? 'Done' : 'Mark Done',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 0,

        onDestinationSelected: (index) {
          if (index == 1) {
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => const PlantsPage()),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => const ProfilePage()),
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
