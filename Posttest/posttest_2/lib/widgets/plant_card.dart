/*
Daripada saya kasih comment deskripsi widgetnya satu saya akan kasih rangkuman aja

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

10. ElevatedButton
Memberikan efek bayangan di belakang sehingga terlihat sedikit menonjol
*/

import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String type;
  final String schedule;
  final String imagePath;

  const PlantCard({
    super.key,
    required this.name,
    required this.type,
    required this.schedule,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 110, height: 110, fit: BoxFit.cover),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF21382A),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  type,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(
                      Icons.water_drop,
                      size: 17,
                      color: Color(0xFF52735A),
                    ),

                    const SizedBox(width: 5),

                    Text(
                      schedule,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF52735A),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF355B43),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),

                  child: const Text('Lihat Detail'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
