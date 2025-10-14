import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Anasayfa(); 
  
}
class _Anasayfa extends State<Anasayfa>{
  String adi = "Deneme";
  //String kaybolma = "Özür dilerim Sila <3 , Yemin ederim bakmadım <3 , Ben sila'yi çok seviyorum <3";
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Deneme"),),
        body: Column(
          children: [
            Text("Deneme Ekranı",
                style: TextStyle(color: Colors.redAccent,fontSize: 24,fontFamily: "Arial",fontWeight: FontWeight.w900),
            ),
            //SizedBox(width: 50,),
            Text("$adi",
              style: TextStyle(color: Colors.redAccent,fontSize: 24,fontFamily: "Arial",fontWeight: FontWeight.w900),
            ),
            SizedBox(width: 50,),
            Wrap(alignment: WrapAlignment.end,spacing: 10,
              children: [
                ElevatedButton(onPressed: (){

                }, child: Text("Deneme Butonu"),),
             Column(children: [ Text("$adi",
              style: TextStyle(color: Colors.redAccent,fontSize: 24,fontFamily: "Arial",fontWeight: FontWeight.w900),
            ),
            SizedBox(width: 50,),
            Text("$adi",
              style: TextStyle(color: Colors.redAccent,fontSize: 24,fontFamily: "Arial",fontWeight: FontWeight.w900),
            ),/*
               Container(child: Text("Resim"),
                 width: 150,height: 150,
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/ayran.png"),
                  border: Border.all(color: Colors.white24))
    //gradient: LinearGradient(begin:Alignment.topLeft,end:Alignment,colors: [Colors.purple.shade300 , const Color(value)])),)
                 )
            ,)*/
          ],
        )
            ])
    ])
      );
      
  }
  
}