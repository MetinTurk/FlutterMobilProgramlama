import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/Kisiler.dart';
import 'package:sayfa_gecis_uygulamasi/SayfaB.dart';

class SayfaA extends StatefulWidget {

  /*
  String isim;
  int yas;
  double boy;
  bool bekarMi;

  SayfaA({required this.isim , required this.yas ,required this.boy ,required this.bekarMi});
   */
  Kisiler kisi;
  SayfaA({required this.kisi});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sayfa A"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
                  },
                  child: Text("Sayfa B'ye Git")
              ),
              Text("İsim: ${widget.kisi.isim}"),
              Text("Yas: ${widget.kisi.yas}"),
              Text("Boy: ${widget.kisi.boy}"),
              Text("Bekar Mı: ${widget.kisi.bekarMi}"),

            ],
          ),
        ),
    );
  }
}
