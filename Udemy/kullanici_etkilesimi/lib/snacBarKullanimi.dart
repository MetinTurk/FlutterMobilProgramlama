import 'package:flutter/material.dart';

class Snackbarkullanimi extends StatefulWidget {
  const Snackbarkullanimi({super.key});

  @override
  State<Snackbarkullanimi> createState() => _SnackbarkullanimiState();
}

class _SnackbarkullanimiState extends State<Snackbarkullanimi> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("SnacBar Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Merhaba")),
                  );

                },
                child: Text("Varsayılan"),
            ),
            ElevatedButton(
              onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Silmek istiyor musunuz"),
                    action: SnackBarAction(
                        label: "Evet",
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Silindi")),
                          );
                        }
                    ),
                  )
                );

              },
              child: Text("SnackBar Action"),
            ),
            ElevatedButton(
              onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text("Internet bağlantısı yok ",style: TextStyle(color: Colors.indigoAccent),),
                      backgroundColor: Colors.white,
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(
                          label: "TEKRAR DENE",
                          textColor: Colors.red,
                          onPressed: (){
                            print("Tekrar denendi");
                          }
                      ),
                    )
                );

              },
              child: Text("SnackBar Ozel"),
            )
          ],
        ),
      ),

    );
  }
}
