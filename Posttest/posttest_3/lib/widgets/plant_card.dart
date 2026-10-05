/*
Daripada saya kasih comment deskripsi di setiap widget satu per satu,
saya akan kasih rangkuman widget yang digunakan pada file ini.

Daftar Widget yang dipakai :

1. StatelessWidget
Widget yang sifatnya statis atau tampilannya tidak berubah sendiri.
Di file ini StatelessWidget digunakan untuk membuat custom widget PlantCard
yang menerima data tanaman dari halaman lain.

2. Container
Widget pembungkus untuk mengatur tampilan seperti padding, warna, border,
dan bentuk sudut. Di file ini Container digunakan sebagai card utama tanaman.

3. Row
Digunakan untuk menyusun beberapa widget secara horizontal.
Di file ini Row digunakan untuk menyusun gambar dan informasi tanaman,
serta menyusun icon air dengan jadwal penyiraman.

4. Image.asset
Digunakan untuk menampilkan gambar yang berasal dari folder assets.
Di file ini digunakan untuk menampilkan gambar setiap tanaman.

5. SizedBox
Digunakan untuk memberikan jarak antar widget, baik secara horizontal
maupun vertikal.

6. Expanded
Digunakan agar widget child mengisi sisa ruang kosong yang tersedia.
Di file ini Expanded digunakan supaya bagian informasi tanaman
menyesuaikan dengan ruang setelah gambar.

7. Column
Digunakan untuk menyusun beberapa widget secara vertikal.
Di file ini Column digunakan untuk menyusun nama tanaman, jenis tanaman,
jadwal penyiraman, dan tombol detail.

8. Text
Digunakan untuk menampilkan informasi dalam bentuk teks.
Di file ini digunakan untuk menampilkan nama tanaman, jenis tanaman,
jadwal penyiraman, dan tulisan pada tombol.

9. Icon
Digunakan untuk menampilkan icon.
Di file ini Icon digunakan untuk menampilkan icon tetesan air
sebagai penanda jadwal penyiraman.

10. ElevatedButton
Digunakan untuk membuat tombol yang dapat ditekan oleh pengguna.
Di file ini ElevatedButton digunakan sebagai tombol "Lihat Detail"
pada setiap PlantCard.
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
