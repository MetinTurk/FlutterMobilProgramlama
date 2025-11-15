import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Urunler extends StatelessWidget {

  String txtUrunadi = "";
  String txtUrunkodu = "";
  Urunler( this.txtUrunadi, this.txtUrunkodu});

  @override
  State<StatefulWidget> createState(){
    return Urunler();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("İkinci Sayfa"),
            ElevatedButton(
              child: Text("Bu Sayfayı Kapat"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}