import 'package:back_stack_kullanimi/OyunEkrani.dart';
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
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver{

  @override
  void initState() {
    super.initState();
    print(("initState() çalıştı"));
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
      if(state == AppLifecycleState.inactive){
        print("inactive() çalıştı");
      }
      if(state == AppLifecycleState.paused){
        print("paused() çalıştı");
      }
      if(state == AppLifecycleState.resumed){
        print("resumed() çalıştı");
      }
      if(state == AppLifecycleState.detached){
        print("detached() çalıştı");
      }

  }
  
  @override
  Widget build(BuildContext context) {
    print("Build() çalıştı");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Oyunekrani()));
                }, 
                child: Text("Oyuna Başla")
            )
          ],
        ),
      ),
    );
  }
}
