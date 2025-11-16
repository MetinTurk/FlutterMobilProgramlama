import 'package:flutter/material.dart';
import 'package:material_design/DinamikListViewDetaySayfa.dart';

class Listviewdinamikkullanimi extends StatefulWidget {
  const Listviewdinamikkullanimi({super.key});

  @override
  State<Listviewdinamikkullanimi> createState() => _ListviewdinamikkullanimiState();
}

class _ListviewdinamikkullanimiState extends State<Listviewdinamikkullanimi> {

  var ulkeler = ["Türkiye" , "Almanya" , "İtalya" , "Rusya" , "Çin"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Dinamik ListView"),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context,indeks){
          return GestureDetector(
            onTap: (){
              print("${ulkeler[indeks]} seçildi");
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dinamiklistviewdetaysayfa(ulkeAdi: ulkeler[indeks]),));
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          print("Text ile ${ulkeler[indeks]} seçildi");
                        },
                          child: Text("${ulkeler[indeks]}")
                      ),
                      Spacer(),
                      PopupMenuButton(
                        child: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(value: 1, child: Text("Sil"),),
                          PopupMenuItem(value: 2, child: Text("Güncelle"),),
                        ],
                        onSelected: (menuItemValue){
                          if(menuItemValue == 1){
                            print("${ulkeler[indeks]} silindi");
                          }
                          if(menuItemValue == 2){
                            print("${ulkeler[indeks]} güncellendi");
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),

    );
  }
}

