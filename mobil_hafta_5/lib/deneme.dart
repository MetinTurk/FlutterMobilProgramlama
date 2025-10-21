import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  const Deneme({super.key});

  @override
  State<StatefulWidget> createState() {
    // HATA: 'throw' yerine 'return' kullanılmalı.
    return _Deneme();
  }
}

class _Deneme extends State<Deneme> {
  // Değişkenler, state sınıfının içine taşındı.
  // Bu sayede bu widget'a ait oldular.
  Color yaziRengi = Colors.indigo;
  int sayac = 100;
  double en = 10 , boy = 10;

  @override
  Widget build(BuildContext context) {
    // HATA: 'throw' yerine 'return' kullanılmalı.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayaç ve Renk Oyunu"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Değer: $sayac",
              // Yazı rengi artık 'yaziRengi' değişkeninden geliyor.
              style: TextStyle(color: yaziRengi, fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Ekranda değişiklik yapmak için setState() kullanılır.
                setState(() {
                  // Yazı rengini her tıklamada kırmızı yapıyoruz.
                  yaziRengi = Colors.red;

                  // Sayaç mantığını daha güvenli hale getirelim.
                  if (sayac < 900) {
                    // Sayaç 900'den küçükse 100 artır.
                    sayac += 100;
                  }

                  if(en<100){
                    en = en+10;boy = boy+10;
                  }

                });
              },
              // Butonun rengi artık sayaçtaki geçerli tona göre değişecek.
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[sayac], // sayac artık hep geçerli (100-900 arası)
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "Tıkla",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Ekranda değişiklik yapmak için setState() kullanılır.
                setState(() {
                  // Yazı rengini her tıklamada kırmızı yapıyoruz.
                  yaziRengi = Colors.red;

                  // Sayaç mantığını daha güvenli hale getirelim.
                  if(sayac >= 100) sayac -= 100;

                  if(en>10)
                  {
                    en = en-10;boy = boy-10;
                  }
                });
              },
              // Butonun rengi artık sayaçtaki geçerli tona göre değişecek.
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[sayac], // sayac artık hep geçerli (100-900 arası)
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "Tıkla",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(child: Text("Resim"),color: Colors.blue[sayac],width: en,height: boy,),
        OutlinedButton( child: Text(
          "Outlined Buton",
          style: TextStyle(color: Colors.black87, fontSize: 25),),
          onPressed: () {},
          ),
            IconButton( icon: Icon(
              Icons.favorite,
              size:40,),
              onPressed: () {},
              color: Colors.lightGreen,),
        ElevatedButton.icon
          (onPressed: (){},
          icon: Icon
            (Icons.delete,color: Colors.black87,),
          label: Text("Eleveted icon Buton",),)
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Bu metod widget ekrana ilk kez çizilirken bir kere çalışır.
    // Başlangıç değerlerini burada atamak iyi bir pratiktir.
    yaziRengi = Colors.indigo;
    sayac = 100;
  }
}