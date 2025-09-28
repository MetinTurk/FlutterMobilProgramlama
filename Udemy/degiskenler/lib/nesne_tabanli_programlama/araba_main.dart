import 'package:degiskenler/nesne_tabanli_programlama/araba.dart';

void main(){
  /*
  var bmw = Araba("Mavi", 100, true);

  var sahin = Araba("Beyaz",0, false);
   */
  var bmw = Araba(renk: "Mavi", hiz: 100 , calisiyorMu: true);
  var sahin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false);

  bmw.renk = "Kırmızı";
  bmw.hiz = 150;
  bmw.calisiyorMu = true;
  
  print("-------------------------");
  print("Renk: ${bmw.renk}");

  sahin.Yazdir();

}