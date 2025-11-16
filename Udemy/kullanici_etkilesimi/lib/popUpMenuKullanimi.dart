import 'package:flutter/material.dart';

class Popupmenukullanimi extends StatefulWidget {
  const Popupmenukullanimi({super.key});

  @override
  State<Popupmenukullanimi> createState() => _PopupmenukullanimiState();
}

class _PopupmenukullanimiState extends State<Popupmenukullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("PopUp Menu Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton(
              child: Icon(Icons.open_in_new),
              itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Sil",style: TextStyle(color: Colors.red),),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Güncelle",style: TextStyle(color: Colors.indigo),),
                  ),

              ],
              onCanceled: (){
                print("Seçim yapılmadı");
              },
              onSelected: (menuItemValue){
                if(menuItemValue == 1){
                  print("Sil Seçildi");
                }
                if(menuItemValue == 2){
                  print("Güncelle Seçildi");
                }
              },
            ),
          ],
        ),
      ),

    );
  }
}
