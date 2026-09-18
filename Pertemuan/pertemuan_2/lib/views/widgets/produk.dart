// 2409106057

import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final String deskripsi;
  final String harga;
  const Product({
    super.key,
    required this.name,
    required this.deskripsi,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(width: 70, height: 70, color: Colors.grey),
        Expanded(
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
              Text(
                deskripsi,
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
              Text(
                harga,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      "Masukkan Keranjang",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
