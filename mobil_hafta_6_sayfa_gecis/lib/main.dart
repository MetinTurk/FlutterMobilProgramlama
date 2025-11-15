import 'package:flutter/material.dart';
import 'package:mobil_hafta_6_sayfa_gecis/anasayfa.dart';
import 'package:mobil_hafta_6_sayfa_gecis/urunler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: Anasayfa()  //farklı bir uygulama yapıcaz
      initialRoute: "/",
      routes: {
        "/": (context) => Anasayfa(),
        "/urunler": (context) => Urunler()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Text("Merhaba"),
    );
  }
}
