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

14. Stack
Untuk numpun beberapa widget child secara berlapis

15. SingleChildScrollView
Agar bisa di Scroll

16. NavigationBar dan NavigationDestination
Agar bisa masuk ke halaman lain

17. PlantCard
Widget custom untuk nampilin data setiap tanaman

18. ProfilePage
Widget custom untuk halaman profile
*/

import 'package:flutter/material.dart';

import 'widgets/plant_card.dart';
import 'profile_page.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F2),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Plants',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF21382A),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDEADD),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: const Text(
                          '5 Plants',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF42694D),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search plants',
                      hintStyle: TextStyle(color: Colors.grey.shade400),

                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),

                        child: Icon(Icons.search, color: Colors.grey.shade500),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 22,
                        right: 22,
                        bottom: 120,
                      ),

                      child: Column(
                        children: [
                          const PlantCard(
                            name: 'Monstera',
                            type: 'Indoor Plant',
                            schedule: 'Water today',
                            imagePath: 'assets/images/Monstera_pexels.jpg',
                          ),

                          const SizedBox(height: 18),

                          const PlantCard(
                            name: 'Basil',
                            type: 'Herb Plant',
                            schedule: 'Water tomorrow',
                            imagePath: 'assets/images/Basil_pexels.jpg',
                          ),

                          const SizedBox(height: 18),

                          const PlantCard(
                            name: 'Peace Lily',
                            type: 'Indoor Plant',
                            schedule: 'Water every 3 days',
                            imagePath: 'assets/images/Lily_pexels.jpg',
                          ),

                          const SizedBox(height: 18),

                          const PlantCard(
                            name: 'Chinese Evergreen',
                            type: 'Indoor Plant',
                            schedule: 'Water every 4 days',
                            imagePath:
                                'assets/images/Chinese Evergreen_pexels.jpg',
                          ),

                          const SizedBox(height: 18),

                          const PlantCard(
                            name: 'Maidenhair Fern',
                            type: 'Indoor Plant',
                            schedule: 'Water every 2 days',
                            imagePath:
                                'assets/images/Maidenhair Fern_pexels.jpg',
                          ),

                          const SizedBox(height: 18),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 1,

        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pop(context);
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
