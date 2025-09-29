class Fonksiyon{
  double km_to_mil(int girilenKm){
    return girilenKm * 0.621;
  }

  int faktoriyel(int sayi){
    int sonuc = 1;
    for(int i = sayi; i > 0; i--){
      sonuc *= i;
    }
    return sonuc;
  }

  int harfSayac(String kelime){
    var sayac = 0;
    for(int i = 0; i < kelime.length; i++){
      if(kelime[i] == "e"){
        sayac++;
      }
    }
    return sayac;
  }

  double aciToplami(int kenarSayisi){
    double toplam = ((kenarSayisi - 2)*180)/ kenarSayisi;
    return toplam;
  }

  int maasHesapla(int calisilanGun){
    var toplamSaat = calisilanGun * 8;
    int mesaiSaat = 0;
    if(toplamSaat >= 150){
      mesaiSaat = toplamSaat - 150;
      return (150*40) + (mesaiSaat * 80);
    }
    else{
      return toplamSaat*40;
    }
  }
  int otoparUcret(int kalinanSaat){
    if(kalinanSaat <= 2){
      return 100;
    }
    else{
      var fazladanSaat = kalinanSaat - 2;
      int fazlaUcret = 0, fazlaodenecek = 0;
      for(int i = 0 ; i < fazladanSaat ; i++){
        fazlaUcret += 10;
        fazlaodenecek += 50+fazlaUcret;
      }
      return 100+fazlaodenecek;
    }
  }
}