import 'package:flutter/material.dart';

class Gesturedetectorkullanimi extends StatefulWidget {
  const Gesturedetectorkullanimi({super.key});

  @override
  State<Gesturedetectorkullanimi> createState() => _GesturedetectorkullanimiState();
}

class _GesturedetectorkullanimiState extends State<Gesturedetectorkullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Gesture Detector"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  print("Container tıklanıldı");
                },
                onDoubleTap: (){
                  print("Container çift tıklanıldı");
                },
                onLongPress: (){
                  print("Container üzerine uzun basıldı");
                },
                child: Container(width: 200,height: 200,color: Colors.red,)),
          ],
        ),
      ),
    );
  }
}
