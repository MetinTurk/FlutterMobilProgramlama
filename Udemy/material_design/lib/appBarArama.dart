import 'package:flutter/material.dart';

class Appbararama extends StatefulWidget {
  const Appbararama({super.key});

  @override
  State<Appbararama> createState() => _AppbararamaState();
}

class _AppbararamaState extends State<Appbararama> {

  bool aramaYapiliyorMu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: aramaYapiliyorMu ?
        TextField(
          decoration: InputDecoration(
              hintText: "Arama için birşey yazın"),
          onChanged: (aramaSonucu){
            print("Arama Sonucu: $aramaSonucu");
          },
        )
            : Text("Appbar Arama"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(
            onPressed: (){
              setState(() {
                aramaYapiliyorMu = false;
              });
            },
            icon: Icon(Icons.cancel),
          )
          : IconButton(
              onPressed: (){
                setState(() {
                  aramaYapiliyorMu = true;
                });
              },
              icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
