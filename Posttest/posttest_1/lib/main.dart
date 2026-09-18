import 'package:flutter/material.dart';

void main() {
  // Widget MaterialApp: menjadi pembungkus utama aplikasi Flutter.
  runApp(
    MaterialApp(
      title: 'My Little Garden',
      debugShowCheckedModeBanner: false,

      // Widget Scaffold: menjadi struktur dasar halaman aplikasi.
      home: Scaffold(
        backgroundColor: const Color(0xFFF7F8F4),

        // Widget SafeArea: menjaga isi aplikasi agar tidak tertutup area sistem.
        body: SafeArea(
          // Widget SingleChildScrollView: membuat halaman dapat di-scroll.
          child: SingleChildScrollView(
            // Widget Padding: memberi jarak pada sisi halaman.
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

              // Widget Column: menyusun seluruh isi homepage secara vertikal.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Widget Row: menyusun nama aplikasi dan icon secara horizontal.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Widget Column: menyusun teks nama aplikasi dan subtitle.
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Widget Text: menampilkan nama aplikasi.
                          Text(
                            'My Little Garden',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF263B2D),
                            ),
                          ),

                          // Widget SizedBox: memberi jarak vertikal.
                          SizedBox(height: 4),

                          // Widget Text: menampilkan subtitle aplikasi.
                          Text(
                            'Plant Care',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF879087),
                            ),
                          ),
                        ],
                      ),

                      // Widget Container: menjadi tempat icon tanaman.
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3EEE5),
                          borderRadius: BorderRadius.circular(14),
                        ),

                        // Widget Icon: menampilkan icon tanaman.
                        child: Icon(
                          Icons.local_florist,
                          size: 28,
                          color: Color(0xFF456B50),
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 32),

                  // Widget Text: menampilkan sapaan pengguna.
                  Text(
                    'Good morning!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263B2D),
                    ),
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 6),

                  // Widget Text: menampilkan keterangan singkat.
                  Text(
                    'Let\'s take care of your plants today.',
                    style: TextStyle(fontSize: 15, color: Color(0xFF7D867E)),
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 24),

                  // Widget Container: menjadi pembungkus kolom pencarian.
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE2E7E1)),
                      borderRadius: BorderRadius.circular(14),
                    ),

                    // Widget TextField: menjadi kolom pencarian tanaman.
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search your plants',
                        hintStyle: TextStyle(color: Color(0xFFA0A6A0)),

                        // Widget Padding: memberi jarak pada icon pencarian.
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4),

                          // Widget Icon: menampilkan icon pencarian.
                          child: Icon(
                            Icons.search,
                            size: 24,
                            color: Color(0xFF6F796F),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 30),

                  // Widget Row: menyusun judul My Garden dan keterangannya.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Widget Text: menampilkan judul My Garden.
                      Text(
                        'My Garden',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263B2D),
                        ),
                      ),

                      // Widget Text: menampilkan keterangan koleksi tanaman.
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF6B806F),
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 15),

                  // Widget Row: menyusun dua kartu ringkasan secara horizontal.
                  Row(
                    children: [
                      // Widget Expanded: membuat kartu pertama mengisi ruang tersedia.
                      Expanded(
                        // Widget Container: membuat kartu jumlah tanaman.
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE7F0E8),
                            borderRadius: BorderRadius.circular(16),
                          ),

                          // Widget Column: menyusun isi kartu secara vertikal.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Widget Container: menjadi pembungkus icon tanaman.
                              Container(
                                padding: const EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                // Widget Icon: menampilkan icon tanaman.
                                child: Icon(
                                  Icons.eco,
                                  size: 25,
                                  color: Color(0xFF456B50),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 18),

                              // Widget Text: menampilkan jumlah tanaman.
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263B2D),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 3),

                              // Widget Text: menampilkan keterangan tanaman.
                              Text(
                                'My Plants',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF667068),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Widget SizedBox: memberi jarak horizontal antar kartu.
                      SizedBox(width: 14),

                      // Widget Expanded: membuat kartu kedua mengisi ruang tersedia.
                      Expanded(
                        // Widget Container: membuat kartu tugas perawatan.
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1EEDF),
                            borderRadius: BorderRadius.circular(16),
                          ),

                          // Widget Column: menyusun isi kartu secara vertikal.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Widget Container: menjadi pembungkus icon air.
                              Container(
                                padding: const EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                // Widget Icon: menampilkan icon air.
                                child: Icon(
                                  Icons.water_drop,
                                  size: 25,
                                  color: Color(0xFF607B68),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 18),

                              // Widget Text: menampilkan jumlah tugas.
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263B2D),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 3),

                              // Widget Text: menampilkan keterangan tugas.
                              Text(
                                'Tasks Today',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF667068),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 32),

                  // Widget Row: menyusun judul Today's Care dan keterangan.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Widget Text: menampilkan judul Today's Care.
                      Text(
                        'Today\'s Care',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263B2D),
                        ),
                      ),

                      // Widget Text: menampilkan jumlah aktivitas.
                      Text(
                        '2 tasks',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF6B806F),
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 15),

                  // Widget Container: membuat kartu perawatan Monstera.
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE3E7E2)),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    // Widget Row: menyusun icon dan informasi Monstera.
                    child: Row(
                      children: [
                        // Widget Container: menjadi pembungkus icon Monstera.
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE7F0E8),
                            borderRadius: BorderRadius.circular(13),
                          ),

                          // Widget Icon: menampilkan icon tanaman.
                          child: Icon(
                            Icons.local_florist,
                            size: 28,
                            color: Color(0xFF456B50),
                          ),
                        ),

                        // Widget SizedBox: memberi jarak horizontal.
                        SizedBox(width: 15),

                        // Widget Expanded: membuat informasi tanaman mengisi sisa ruang.
                        Expanded(
                          // Widget Column: menyusun informasi tanaman secara vertikal.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Widget Text: menampilkan nama tanaman.
                              Text(
                                'Monstera',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263B2D),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 5),

                              // Widget Text: menampilkan jenis perawatan.
                              Text(
                                'Watering',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF828982),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Widget Column: menyusun status perawatan.
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // Widget Icon: menampilkan icon air.
                            Icon(
                              Icons.water_drop,
                              size: 19,
                              color: Color(0xFF567B62),
                            ),

                            // Widget SizedBox: memberi jarak vertikal.
                            SizedBox(height: 5),

                            // Widget Text: menampilkan waktu perawatan.
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF567B62),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Widget SizedBox: memberi jarak vertikal antar kartu.
                  SizedBox(height: 12),

                  // Widget Container: membuat kartu perawatan Basil.
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE3E7E2)),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    // Widget Row: menyusun icon dan informasi Basil.
                    child: Row(
                      children: [
                        // Widget Container: menjadi pembungkus icon Basil.
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1EEDF),
                            borderRadius: BorderRadius.circular(13),
                          ),

                          // Widget Icon: menampilkan icon daun.
                          child: Icon(
                            Icons.eco,
                            size: 28,
                            color: Color(0xFF6E7958),
                          ),
                        ),

                        // Widget SizedBox: memberi jarak horizontal.
                        SizedBox(width: 15),

                        // Widget Expanded: membuat informasi tanaman mengisi sisa ruang.
                        Expanded(
                          // Widget Column: menyusun informasi tanaman secara vertikal.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Widget Text: menampilkan nama tanaman.
                              Text(
                                'Basil',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263B2D),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 5),

                              // Widget Text: menampilkan jenis perawatan.
                              Text(
                                'Watering',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF828982),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Widget Column: menyusun status perawatan.
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // Widget Icon: menampilkan icon air.
                            Icon(
                              Icons.water_drop,
                              size: 19,
                              color: Color(0xFF7A8261),
                            ),

                            // Widget SizedBox: memberi jarak vertikal.
                            SizedBox(height: 5),

                            // Widget Text: menampilkan waktu perawatan.
                            Text(
                              'Tomorrow',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF7A8261),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Widget SizedBox: memberi ruang pada bagian bawah halaman.
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
