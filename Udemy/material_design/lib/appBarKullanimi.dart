import 'package:flutter/material.dart';

class Appbarkullanimi extends StatefulWidget {
  const Appbarkullanimi({super.key});

  @override
  State<Appbarkullanimi> createState() => _AppbarkullanimiState();
}

class _AppbarkullanimiState extends State<Appbarkullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Column(
          children: [
            Text("Başlık",style: TextStyle(color: Colors.white,fontSize: 16.0),),
            Text("Alt Baslik",style: TextStyle(color: Colors.white,fontSize: 12.0),),
          ],
        ),
        //Text("Baslik",style: TextStyle(color: Colors.white),),
        //centerTitle: true,
        leading: IconButton(
          tooltip: "Menu Icon",
            onPressed: (){
              print("Menu Icon Tıklandı");
            },
            icon: Icon(Icons.dehaze,color: Colors.white,),
        ),
        actions: [
          TextButton(
              onPressed: (){
                print("Çıkış tıklandı");
              },
              child: Text("ÇIKIS",style: TextStyle(color: Colors.white),),
          ),
          IconButton(
            tooltip: "Bilgi",
            onPressed: (){
              print("Bilgi Tıklandı");
            },
            icon: Icon(Icons.info_outline,color: Colors.white,),
          ),
          PopupMenuButton(
              child: Icon(Icons.more_vert,color: Colors.white,),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Sil"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Güncelle"),
                ),
              ],
            onSelected: (menuItemValue){
                if(menuItemValue == 1){
                  print("Sil Tıklandı");
                }
                if(menuItemValue == 2){
                  print("Güncelle tıklandı");
                }
            },
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
