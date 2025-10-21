import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(
          flex: 30,
            child:
            Container(width: 100,height: 100, color: Colors.red,)
        ),
        Expanded(
          flex: 70,
            child:
            Container(width: 100,height: 100, color: Colors.blue,)
        ),
      ],),

        //PADDİNG
      /*Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 40,top: 20,bottom: 30),
            child: Container(width: 100,height: 100, color: Colors.red,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top:30,),
            child: Container(width: 100,height: 100, color: Colors.blue,),
          ),
          Container(width: 100,height: 100, color: Colors.green,),
        ],
      )
       */

      //SPACER
      /*Column(
        children: [
          Container(width: 80,height: 80, color: Colors.red,),
          Spacer(flex: 30,), //%30 boşluk
          //Spacer(), //araya bütün boşluğu kaydırır.
          Container(width: 50,height: 50, color: Colors.blue,),
          Spacer(flex: 70,),  //%70 boşluk
          //Spacer(), //2 tane olursa var olan boşuğu paylaşırlar.
          Container(width: 100,height: 100, color: Colors.green,),
        ],
      )
       */

      //SizedBox
      /*Row(children: [
        Container(width: 80,height: 80, color: Colors.red,),
        SizedBox(width: 100, height: 200,), //boşluk oluşturdu.
        Container(width: 50,height: 50, color: Colors.blue,),
        Container(width: 100,height: 100, color: Colors.green,),

      ],)*/
    );
  }
}
