import 'package:flutter/material.dart';

class Gridviewsabitkullanimi extends StatefulWidget {
  const Gridviewsabitkullanimi({super.key});

  @override
  State<Gridviewsabitkullanimi> createState() => _GridviewsabitkullanimiState();
}

class _GridviewsabitkullanimiState extends State<Gridviewsabitkullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Grid View Sabit"),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2/1,
          children: [
            GestureDetector(
              onTap: (){
                print("Güneş tıklandı");
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny),
                    Text("Güneş"),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.brightness_2),
                  Text("Ay"),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Text("Yıldız"),
                ],
              ),
            ),
          ],
      )
    );
  }
}
