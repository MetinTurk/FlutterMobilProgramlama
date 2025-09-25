class Personel{
  double _maas = 0;

  double get maas => _maas;

  set maas(double value) {
    _maas = value;
  }

  String _adi = "";

  String get adi => _adi;

  set adi(String value) {
    _adi = value;
  }
  String _soyadi = "";

  String get soyadi => _soyadi;

  set soyadi(String value) {
    _soyadi = value;
  }

  Personel({required adi, required soyadi})
  {
    this._adi = adi;
    this._soyadi = soyadi;
  }

  /*Personel(String ad, String soyad)
  {
    this._adi = ad;
    this._soyadi = soyad;
  }
  */

  double yazdir(String boy){
    try
    {
      String boy = "187";
      String kilo = "93";
      double boyDb1 = double.parse(boy) ;
      int kiloInt = int.parse(kilo);
      double boyKiloIndexi = kiloInt / (boyDb1 * boyDb1);
      print(boyKiloIndexi);
      return boyKiloIndexi;
    }
    catch(e){
      print("Bir hata oluştu: " +e.toString());
      return -1;
    }
    finally
    {
      print("En sonda yapilacak işler");
    }
  }
}