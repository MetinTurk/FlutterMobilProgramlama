import 'package:flutter/material.dart';

class Alertdialogkullanimi extends StatefulWidget {
  const Alertdialogkullanimi({super.key});

  @override
  State<Alertdialogkullanimi> createState() => _AlertdialogkullanimiState();
}

class _AlertdialogkullanimiState extends State<Alertdialogkullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("AlertDialog Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){

                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Baslik"),
                          content: Text("icerik"),
                          actions: [
                            TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text("İptal"),
                            ),
                            TextButton(
                              onPressed: (){
                                print("Tamam seçildi");
                                Navigator.pop(context);
                              },
                              child: Text("Tamam"),
                            )
                          ],
                        );
                      },
                  );

                },
                child: Text("Basit Alert"),
            ),
            ElevatedButton(
              onPressed: (){
                var tfVeri = TextEditingController();
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      backgroundColor: Colors.indigoAccent,
                      title: Text("Özel Alert" , style: TextStyle(color: Colors.white),),
                      content: SizedBox(
                        height: 80,
                        child: TextField(
                          controller: tfVeri,
                          decoration: InputDecoration(
                            labelText: "Veri",
                            hintText: "Merhaba",
                          ),
                        ),
                      ),

                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("İptal",style: TextStyle(color: Colors.white),),
                        ),
                        TextButton(
                          onPressed: (){
                            print("Girilen veri: ${tfVeri.text}");
                            tfVeri.text = "";
                            Navigator.pop(context);
                          },
                          child: Text("Veri Oku",style: TextStyle(color: Colors.white),),
                        )
                      ],
                    );
                  },
                );

              },
              child: Text("Ozel Alert"),
            ),
          ],
        ),
      ),

    );
  }
}
