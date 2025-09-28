class Araba{
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba({required this.renk,required this.hiz,required this.calisiyorMu});

  void calistir(){//Side effect : Yan etki
    calisiyorMu = true;
    hiz = 5;
  }

  void hizlan(int kacKm){
    hiz += kacKm;
  }

  void yavasla(int kacKm){
    hiz -= kacKm;
  }

  void Yazdir(){
    print("Renk : ${renk}");
    print("Hız: ${hiz}");
    print("Calisiyor mu: ${calisiyorMu}");
  }
}