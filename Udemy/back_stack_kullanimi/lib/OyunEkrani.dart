import 'package:back_stack_kullanimi/SonucEkrani.dart';
import 'package:flutter/material.dart';

class Oyunekrani extends StatefulWidget {
  const Oyunekrani({super.key});

  @override
  State<Oyunekrani> createState() => _OyunekraniState();
}

class _OyunekraniState extends State<Oyunekrani> {

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate() çalıştı.");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose() çalıştı.");
  }

  @override
  Widget build(BuildContext context) {
    print("build() çalıştı");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Oyun Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sonucekrani())); //bulunduğu sayfayı back stack den sil. geri dönerken bu sayfayı açma demek

                },
                child: Text("Oyuna Bitti")
            )
          ],
        ),
      ),
    );
  }
}
