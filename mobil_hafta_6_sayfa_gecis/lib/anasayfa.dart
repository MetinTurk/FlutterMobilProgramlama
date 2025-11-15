import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_hafta_6_sayfa_gecis/urunler.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Birinci Sayfa"),
                ElevatedButton(
                  child: Text("Yeni Sayfaya Git"),
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder:
                        //(context) => Urunler()));
                    Navigator.pushNamed(context, "/urunler");
                  },
                ),
              ],
            ),
          Column(
            children: [
              listTile("Ali Yıldırım", "a@gmail.com"), SizedBox(height: 10.0,),
              listTile("Ayşe Yıldırım", "b@gmail.com"), SizedBox(height: 10.0,),
              listTile("Aykut Yıldırım","c@gmail.com"), SizedBox(height: 10.0,)
            ],
          )],
        ),
      ),
    );
  }
}

ListTile listTile
    (String adiSoyadi,String mail) {
  return ListTile
    (
    leading: Icon
      (Icons.account_box),
    title: Text
      (adiSoyadi),
    subtitle: Text(mail),
    trailing: Icon
      (Icons
        .mail),
    onTap: (){
      print("ListTile Tıklandı");
    },);}
