import 'package:flutter/material.dart';
import 'package:image_kullanimi/GestureDetectorKullanimi.dart';
import 'package:image_kullanimi/dropdown_button_kullanimi.dart';
import 'package:image_kullanimi/time_date_picker_kullanimi.dart';

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
      home: Gesturedetectorkullanimi(),
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

  String resimAdi = "yemekresim.jpeg";
  String resimAdiNetwork = "django.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
                placeholder: "resimler/placeholder.png",
                image: "http://kasimadalan.pe.hu/filmler/resimler/$resimAdiNetwork",
            ),
            //Image.network("http://kasimadalan.pe.hu/filmler/resimler/$resimAdiNetwork"),
            //Image.asset("resimler/$resimAdi"),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    resimAdi = "yemekresim.jpeg";
                    resimAdiNetwork = "django.png";
                  });
                },
                child: Text("Resim 1"),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  resimAdi = "stevejobs@3x.png";
                  resimAdiNetwork = "inception.png";
                });
              },
              child: Text("Resim 2"),
            ),
            //Image.network("http://kasimadalan.pe.hu/filmler/resimler/django.png"),
          ],
        ),
      ),
    );
  }
}
