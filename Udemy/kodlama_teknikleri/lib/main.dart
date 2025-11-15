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
      home:  AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfa();
}

class _AnaSayfa extends State<AnaSayfa> {

  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Kodlama Teknikleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text( kontrol ? "Doğru" : "Yanlış",
              style:
              TextStyle(
                color: kontrol ? Colors.blue : Colors.red,
                fontSize: kontrol ? 20 : 50,
                fontWeight: kontrol ? FontWeight.normal : FontWeight.bold
              ),),
            Visibility(
                visible: kontrol,
                child: Text("Merhaba")),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    kontrol = true;
                  });
                },
                child: Text("Durum 1")
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    kontrol = false;
                  });
                },
                child: Text("Durum 2")
            )
          ],
        ),
      ),
    );
  }
}
