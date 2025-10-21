import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: "İlham ver"),
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
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Image.asset("resimler/stevejobs@3x.png"),
          Text("Steve Jobs"),
          Text("Dünyayı değiştiricek olan insanlar, onu değiştirebilecekceklerini düşünecek kadar çılgınlardır"),
          ElevatedButton(onPressed: (){
            print("İlham verildi");
          }, child: Text("İLHAM VER"))
        ],
      )

    );
  }
}
