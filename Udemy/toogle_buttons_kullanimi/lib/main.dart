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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  var toogleDurumlar = [false,true,false];
  int secilenToogleIndeks = 0;

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
            ToggleButtons(
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
                color: Colors.pink,
                selectedColor: Colors.deepPurple,
                fillColor: Colors.yellow,
                isSelected: toogleDurumlar,
                onPressed: (int secilenIndeks){
                  secilenToogleIndeks = secilenIndeks;
                  print("${secilenIndeks+1}. toggle seçildi");

                  setState(() {
                    toogleDurumlar[secilenIndeks] = !toogleDurumlar[secilenIndeks];
                  });
                },
            ),
            ElevatedButton(
                onPressed: (){
                  print("En son ${secilenToogleIndeks+1}. toogle seçildi");
                },
                child: Text("Goster"),
            ),
          ],
        ),
      ),

    );
  }
}
