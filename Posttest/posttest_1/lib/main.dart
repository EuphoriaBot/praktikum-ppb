import 'package:flutter/material.dart';

void main() {
  // Widget MaterialApp ini sebagai pembungkus nya, jadi semuanya masuk di dalam sini
  runApp(
    MaterialApp(
      title: 'My Little Garden',
      debugShowCheckedModeBanner: false,

      // Widget Scaffold ini ibaratnya sebagai kerangka rumahnya lah, nanti bakal diisi elemen elemen UI
      home: Scaffold(
        backgroundColor: const Color(0xFFF6F7F2),

        // Widget SafeArea ini fungsinya agar memastikan childnya tidak tertutup di area yang tertutup oleh perangkat
        body: SafeArea(
          // Widget SingleChildScrollView agar halaman dapat di scroll
          child: SingleChildScrollView(
            // Widget Padding untuk memberi ruang antar child
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

              // Widget Column agar widget nya bisa vertikal
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Widget Row isinya untuk nama aplikasi dan icon, biar bisa horizontal juga
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Widget Column ini isinya nama aplikasi dan subtitle
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Widget Text untuk nampilin teks dengan style style nya
                          Text(
                            'Crazy Dave Garden',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF21382A),
                            ),
                          ),

                          // Widget SizedBox buat kasih jarak dikit
                          SizedBox(height: 3),
                        ],
                      ),

                      // Widget ClipRRect biar headernya ini sudut nya agak melengkung
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),

                        // Widget Image untuk menampilkan gambar
                        child: Image.asset(
                          '../assets/images/CrazyDave.webp',
                          width: 52,
                          height: 52,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox juga kasih jarak
                  SizedBox(height: 24),

                  // Widget Container sebagai tempat pembungkus agar nanti bisa didekorasi di dalamnya
                  Container(
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: const Color(0xFF355B43),
                      borderRadius: BorderRadius.circular(24),
                    ),

                    // Widget Row untuk menyusun tulisan dan icon secara horizontal
                    child: Row(
                      children: [
                        // Widget Expanded membuat tulisan agar expand ke ruangannya
                        Expanded(
                          // Widget Column menyusun isi cardnya secara vertikal
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Widget Text untuk nampilin teks dengan style style nya
                              Text(
                                'Nice Garden',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              // Widget SizedBox untuk beri jarak
                              SizedBox(height: 10),

                              // Widget Text untuk nampilin teks dengan style style nya
                              Text(
                                '2 plants need your care today',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFFD5E2D7),
                                ),
                              ),

                              // Widget SizedBox untuk memberi jarak vertikal
                              SizedBox(height: 18),

                              // Widget Container sebagai tempat pembungkus agar nanti bisa didekorasi di dalamnya
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1E9C9),
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                // Widget Text untuk nampilin teks dengan style style nya
                                child: Text(
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

                        // Widget SizedBox agar memberi jarak
                        SizedBox(width: 12),

                        // Widget ClipRRect agar sudut gambar menjadi melengkung
                        ClipRRect(
                          borderRadius: BorderRadius.circular(22),

                          // Widget Image untuk nampilin gambar
                          child: Image.asset(
                            '../assets/images/Greenhouse_pexels.jpg',
                            width: 100,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Widget SizedBox untuk memberi jarak
                  SizedBox(height: 22),

                  // Widget Container sebagai tempat pembungkus agar nanti bisa didekorasi di dalamnya
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE0E5DE)),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // Widget TextField: digunakan untuk mencari tanaman.
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search your plants',
                        hintStyle: TextStyle(color: Color(0xFFA1A7A1)),

                        // Mengatur posisi teks agar lebih pas di tengah secara vertikal.
                        contentPadding: EdgeInsets.symmetric(vertical: 18),

                        // Menghilangkan garis bawah bawaan TextField.
                        border: InputBorder.none,

                        // Widget Padding: memberi jarak pada icon search.
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4),

                          // Widget Icon: menampilkan icon pencarian.
                          child: Icon(Icons.search, color: Color(0xFF607065)),
                        ),
                      ),
                    ),
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 28),

                  // Widget Text: menampilkan judul Garden Overview.
                  Text(
                    'Garden Overview',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF21382A),
                    ),
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 14),

                  // Widget Row: menyusun dua kartu Garden Overview secara horizontal.
                  Row(
                    children: [
                      // Widget Expanded: membuat kartu My Plants mengisi ruang yang tersedia.
                      Expanded(
                        // Widget Container: membuat kartu overview tanaman.
                        child: Container(
                          height: 120,
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDDEADD),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: const Color(0xFFD0DFD1)),
                          ),

                          // Widget Row: menyusun icon, angka, dan labemainAxisAlignment: MainAxisAlignment.center,l secara horizontal.
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Widget Container: membuat kotak icon tanaman.
                              Container(
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),

                                // Widget Icon: menampilkan icon tanaman.
                                child: Icon(
                                  Icons.eco,
                                  size: 27,
                                  color: Color(0xFF42694D),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak horizontal.
                              SizedBox(width: 14),

                              // Widget Text: menampilkan jumlah tanaman.
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF21382A),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak horizontal.
                              SizedBox(width: 12),

                              // Widget Text: menampilkan label tanaman.
                              Text(
                                'My Plants',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF415648),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Widget SizedBox: memberi jarak antara kedua kartu.
                      SizedBox(width: 14),

                      // Widget Expanded: membuat kartu Care Tasks mengisi ruang yang tersedia.
                      Expanded(
                        // Widget Container: membuat kartu overview tugas.
                        child: Container(
                          height: 120,
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0E8CE),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: const Color(0xFFE5DDBF)),
                          ),

                          // Widget Row: menyusun icon, angka, dan label secara horizontal.
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Widget Container: membuat kotak icon perawatan.
                              Container(
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),

                                // Widget Icon: menampilkan icon air.
                                child: Icon(
                                  Icons.water_drop,
                                  size: 27,
                                  color: Color(0xFF68765C),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak horizontal.
                              SizedBox(width: 14),

                              // Widget Text: menampilkan jumlah tugas.
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF21382A),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak horizontal.
                              SizedBox(width: 12),

                              // Widget Text: menampilkan label tugas.
                              Text(
                                'Care Tasks',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF565B45),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 30),

                  // Widget Row: menyusun judul Featured Plant dan statusnya.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Widget Text: menampilkan judul Featured Plant.
                      Text(
                        'Featured Plant',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF21382A),
                        ),
                      ),

                      // Widget Text: menampilkan jenis tanaman.
                      Text(
                        'Indoor',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF57705E),
                        ),
                      ),
                    ],
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 14),

                  // Widget Container: membuat kartu tanaman unggulan.
                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE0E5DE)),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    // Widget Row: menyusun icon dan informasi tanaman.
                    child: Row(
                      children: [
                        // Widget Container: menjadi area icon tanaman.
                        // Widget ClipRRect: membuat sudut gambar menjadi melengkung.
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),

                          // Widget Image: menampilkan foto tanaman Monstera.
                          child: Image.asset(
                            '../assets/images/Monstera_pexels.jpg',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Widget SizedBox: memberi jarak horizontal.
                        SizedBox(width: 17),

                        // Widget Expanded: membuat informasi memenuhi ruang.
                        Expanded(
                          // Widget Column: menyusun informasi tanaman.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Widget Text: menampilkan nama tanaman.
                              Text(
                                'Monstera',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF21382A),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 4),

                              // Widget Text: menampilkan kategori tanaman.
                              Text(
                                'Indoor Plant',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF899089),
                                ),
                              ),

                              // Widget SizedBox: memberi jarak vertikal.
                              SizedBox(height: 13),

                              // Widget Row: menyusun icon air dan jadwal.
                              Row(
                                children: [
                                  // Widget Icon: menampilkan icon air.
                                  Icon(
                                    Icons.water_drop,
                                    size: 17,
                                    color: Color(0xFF52735A),
                                  ),

                                  // Widget SizedBox: memberi jarak horizontal.
                                  SizedBox(width: 5),

                                  // Widget Text: menampilkan jadwal penyiraman.
                                  Text(
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

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 30),

                  // Widget Text: menampilkan judul Today's Care.
                  Text(
                    'Today\'s Care',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF21382A),
                    ),
                  ),

                  // Widget SizedBox: memberi jarak vertikal.
                  SizedBox(height: 14),

                  // Widget Container: membuat kartu care pertama.
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    // Widget Row: menyusun isi kartu secara horizontal.
                    child: Row(
                      children: [
                        // Widget ClipRRect: membuat sudut gambar menjadi melengkung.
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),

                          // Widget Image: menampilkan gambar Monstera.
                          child: Image.asset(
                            '../assets/images/Monstera_pexels.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Widget SizedBox: memberi jarak horizontal.
                        SizedBox(width: 13),

                        // Widget Expanded: membuat nama tanaman mengisi ruang.
                        Expanded(
                          // Widget Text: menampilkan nama tanaman.
                          child: Text(
                            'Monstera',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF263B2D),
                            ),
                          ),
                        ),

                        // Widget Text: menampilkan jadwal tanaman.
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF587361),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Widget SizedBox: memberi jarak antar kartu.
                  SizedBox(height: 10),

                  // Widget Container: membuat kartu care kedua.
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    // Widget Row: menyusun isi kartu secara horizontal.
                    child: Row(
                      children: [
                        // Widget Container: menjadi tempat icon tanaman.
                        // Widget ClipRRect: membuat sudut gambar menjadi melengkung.
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),

                          // Widget Image: menampilkan gambar Basil.
                          child: Image.asset(
                            '../assets/images/Basil_pexels.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Widget SizedBox: memberi jarak horizontal.
                        SizedBox(width: 13),

                        // Widget Expanded: membuat nama tanaman mengisi ruang.
                        Expanded(
                          // Widget Text: menampilkan nama tanaman.
                          child: Text(
                            'Basil',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF263B2D),
                            ),
                          ),
                        ),

                        // Widget Text: menampilkan jadwal tanaman.
                        Text(
                          'Tomorrow',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF747A5D),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Widget SizedBox: memberi jarak pada bagian bawah halaman.
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
