import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: "İlham ver"),
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

    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:ekranYuksekligi/100,bottom: 8.0),
            child: SizedBox(
                width: ekranGenisligi/5,
                child: Image.asset("resimler/stevejobs@3x.png")
            ),
          ),
          Text("Steve Jobs",style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi/30),),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right:ekranGenisligi/70 ,left:ekranGenisligi/70),
            child: Text("Dünyayı değiştiricek olan insanlar, onu değiştirebilecekceklerini düşünecek kadar çılgınlardır",
            textAlign: TextAlign.center,style: TextStyle(fontSize: ekranGenisligi/30),),
          ),
          Spacer(),
          SizedBox(
            width: ekranGenisligi/2,
            height: ekranYuksekligi/15,
            child: Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi/40,),
              child: ElevatedButton(
                child: Text("İLHAM VER",style: TextStyle(fontSize: ekranGenisligi/25),),
                onPressed: (){
                print("İlham verildi");
                },

              ),
            ),
          ),
        ],
      )

    );
  }
}
