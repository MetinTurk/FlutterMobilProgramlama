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

  bool kotlinDurum = false;
  bool dartDurum = false;

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
          children: [
            CheckboxListTile(
                title: Text("Kotlin"),
                value: kotlinDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.deepPurple,
                onChanged: (bool? veri){
                  print("Kotlin Seçildi: $veri");
                  setState(() {
                    kotlinDurum = veri ?? false;
                  });
                }
            ),
            CheckboxListTile(
                title: Text("Dart"),
                value: dartDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.deepPurple,
                onChanged: (bool? veri){
                  print("Dart Seçildi: $veri");
                  setState(() {
                    dartDurum = veri ?? false;
                  });
                }
            ),
            ElevatedButton(
                onPressed: (){
                  print("Dart Durum: ${dartDurum}");
                  print("Kotlin Durum: ${kotlinDurum}");

                },
                child: Text("Goster")
            ),
          ],
        ),
      ),

    );
  }
}
