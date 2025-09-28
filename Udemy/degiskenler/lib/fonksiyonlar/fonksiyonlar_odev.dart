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
}