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
      body:
        LayoutBuilder(
            builder: (BuildContext context , BoxConstraints constraints){
            if(constraints.maxWidth < 600){
                return TelefonTasarim();
            }
            else
              {
                return TabletTasarim();
              }
    }),
      /*
      Column(

        children: [
          Image.asset("resimler/odevresim.jpeg"),
          Text("Odev")
        ],
      )
       */


    );
  }
}

class TabletTasarim extends StatelessWidget {
  const TabletTasarim({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/stevejobs@2x.png"),
          Text("Steve Jobs" , style: TextStyle(fontSize:30.0 ),)
        ],
      ),
    );
  }
}

class TelefonTasarim extends StatelessWidget {
  const TelefonTasarim({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/stevejobs@1x.png"),
          Text("Steve Jobs" , style: TextStyle(fontSize:20.0 ),)
        ],
      ),
    );
  }
}

