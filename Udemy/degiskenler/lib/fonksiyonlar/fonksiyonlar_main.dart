import 'package:degiskenler/fonksiyonlar/fonksiyonlar_odev.dart';

void main(){
  var fonksiyon = Fonksiyon();

  print("Sonuc: ${fonksiyon.faktoriyel(5)}");

  print("Girdiğiniz kelimede : ${fonksiyon.harfSayac("emeklemek")} tane 'e' harfi vardır.");

  var kenarSayisi = 5;
  print("${kenarSayisi} kenarlı şekilin iç açıları toplamı: ${fonksiyon.aciToplami(kenarSayisi)}");

  print("Maaşınız: ${fonksiyon.maasHesapla(10)}");

  print("Otopark Ücretiniz: ${fonksiyon.otoparUcret(4)}");

}