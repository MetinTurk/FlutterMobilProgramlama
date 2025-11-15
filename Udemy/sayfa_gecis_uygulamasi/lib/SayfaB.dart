import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  /*
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Geri tuşu tıklandı");
    Navigator.of(context).popUntil((Route) => Route.isFirst);
    return true;
  }
   */
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Sayfa B"),
          leading: IconButton(
              onPressed: (){
                print("App bar geri dönüş tuşu tıklandı");
                //Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa()));
                Navigator.pop(context); //default hali bu şekilde çalışır.
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: PopScope( //eskiden WillPopScope kullanılırmış.
          canPop: true,  //geri donus yapıp yapmayacağı
          onPopInvoked: (canPopState){  //tuşa basıldığında ne yapılacağı
            print("Navigation geri tusu secildi");
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("Geldiği sayfaya dön")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).popUntil((Route) => Route.isFirst); //ilk sayfaya dön ve önceden açılmış sayfaları kapat.
                    },
                    child: Text("Anasayfaya Dön")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa())); //yeni bir sayfa açarmış gibi yapıyor.
                    },
                    child: Text("Anasayfaya Geçiş Yap")
                ),
              ],
            ),
          ),
        )

    );
  }
}
