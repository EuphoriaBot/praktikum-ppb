import 'package:flutter/material.dart';
import 'package:pertemuan_2/views/widgets/produk.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: TextField(decoration: InputDecoration()),
            ),
            Expanded(
              child: ListView(
                children: [
                  Product(
                    name: "Kaos",
                    deskripsi: "Kaos Murah",
                    harga: "Rp100.000",
                  ),
                  Product(
                    name: "Jaket",
                    deskripsi: "Jaket Murah",
                    harga: "Rp200.000",
                  ),
                  Product(
                    name: "Sepatu",
                    deskripsi: "Sepatu Murah",
                    harga: "Rp170.000",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.cyanAccent,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Keranjang",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
