import 'package:flutter/material.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({super.key});

  @override
  State<DropdownButtonKullanimi> createState() => _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {

  var ulkelerListe = <String>[];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    super.initState();
    ulkelerListe.add("Türkiye");
    ulkelerListe.add("İtalya");
    ulkelerListe.add("Almanya");
    ulkelerListe.add("Rusya");
    ulkelerListe.add("Çin");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Time_date_picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
                value: secilenUlke,
                items: ulkelerListe.map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text("Ülke: ${value}",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                  );
                }).toList(),
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String? secilenVeri){
                  setState(() {
                    secilenUlke = secilenVeri ?? "Türkiye";
                  });
                }
            ),
            Text("Seçilen ülke: ${secilenUlke}"),
            ElevatedButton(
                onPressed: (){
                  print("En son seçilen ülke: ${secilenUlke}");
                },
                child: Text("Goster")
            ),
          ],
        ),
      ),
    );
  }
}
