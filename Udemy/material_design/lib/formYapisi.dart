import 'package:flutter/material.dart';

class Formyapisi extends StatefulWidget {
  const Formyapisi({super.key});

  @override
  State<Formyapisi> createState() => _FormyapisiState();
}

class _FormyapisiState extends State<Formyapisi> {

  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Form Yapisi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tfKullaniciAdi,
                        decoration: InputDecoration(
                          hintText: "Kullanıcı Adı:"
                        ),
                        validator: (tfgirdisi){
                          if(tfgirdisi!.isEmpty){
                            return "Kullanıcı Adı Giriniz";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: tfSifre,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Şifre:",
                        ),
                        validator: (tfgirdisi){
                          if(tfgirdisi!.isEmpty){
                            return "Şifre Giriniz";
                          }
                          if(tfgirdisi.length < 6){
                            return "Şifreniz en az 6 haneli olmalıdır";
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                          onPressed: (){
                            bool kontrolSonucu = formKey.currentState!.validate();
                            if(kontrolSonucu){
                              String ka = tfKullaniciAdi.text;
                              String sifre = tfSifre.text;
                              print("Kullanıcı adı: $ka - Şifre : $sifre");
                            }
                          },
                          child: Text("Giriş"),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
