import 'package:flutter/material.dart';

class Listviewkullanimi extends StatefulWidget {
  const Listviewkullanimi({super.key});

  @override
  State<Listviewkullanimi> createState() => _ListviewkullanimiState();
}

class _ListviewkullanimiState extends State<Listviewkullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("List View"),
      ),
      body:
        ListView(
          children: [
            ListTile(
              leading: Icon(Icons.sunny),
              title: Text("Güneş"),
              subtitle: Text("Güneş alt başlık"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                print("Güneş Tıklandı");
              },
            ),
            ListTile(
              leading: Icon(Icons.brightness_2),
              title: Text("Ay"),
              subtitle: Text("Ay alt başlık"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                print("Ay Tıklandı");
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Yıldız"),
              subtitle: Text("Yıldız alt başlık"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                print("Yıldız Tıklandı");
              },
            ),
            GestureDetector(
              onTap: (){
                print("Card tıklandı");
              },
              child: Card(
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Text("Card Tasarim"),
                      Spacer(),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Container tıklandı");
              },
              child: Container(
                height: 50,
                color: Colors.red,
                child: Text("Merhaba"),
              ),
            )
          ],
        )
    );
  }
}
