import 'package:flutter/material.dart';
import 'package:slider_kullanimi/WebView.dart';

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
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Webview(),
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

  double ilerleme = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Sonuc: ${ilerleme.toInt()}"),
            Slider(
                max: 100.0,
                min: 0.0,
                value: ilerleme,
                activeColor: Colors.indigo,
                inactiveColor: Colors.red,
                onChanged: (double i){
                setState(() {
                  ilerleme = i;

                });
                }
            ),
            ElevatedButton(
                onPressed: (){
                  print("Slider ilerleme: ${ilerleme.toInt()}");
                },
                child: Text("Goster"),
            ),
          ],
        ),
      ),
    );
  }
}
