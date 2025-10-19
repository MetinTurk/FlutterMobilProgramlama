import 'package:flutter/material.dart';
import 'package:mobil_hafta_5/deneme.dart'; // Kendi paket yolunu kontrol et.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Deneme(), // Deneme widget'ını çağırıyoruz.
    );
  }
}