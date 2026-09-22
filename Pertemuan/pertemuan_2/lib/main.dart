// Dimas Firjatullah Islamay
// 2409106057

import 'package:flutter/material.dart';
import 'package:pertemuan_2/views/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
      home: HomePage(),
    );
  }
}
