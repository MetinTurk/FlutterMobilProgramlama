import 'package:flutter/material.dart';

class Dinamiklistviewdetaysayfa extends StatefulWidget {
  String ulkeAdi;

  Dinamiklistviewdetaysayfa({required this.ulkeAdi});


  @override
  State<Dinamiklistviewdetaysayfa> createState() => _DinamiklistviewdetaysayfaState();
}

class _DinamiklistviewdetaysayfaState extends State<Dinamiklistviewdetaysayfa> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Detay Sayfası"),
      ),
      body: Center(
        child: Text("${widget.ulkeAdi}", style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
