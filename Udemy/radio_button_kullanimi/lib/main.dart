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

  int radioDeger = 0;

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
            RadioListTile(
              title: Text("Beşiktaş"),
              value: 1,
              groupValue: radioDeger,
              activeColor: Colors.black ,
              onChanged: (int? veri){
                setState(() {
                  radioDeger = veri ?? 0;
                });
                print("Beşiktaş seçildi");
              },
            ),
            RadioListTile(
              title: Text("Eskişehir"),
              value: 2,
              groupValue: radioDeger,
              activeColor: Colors.red,
              onChanged: (int? veri){
                setState(() {
                  radioDeger = veri ?? 0;
                });
                print("Eskişehir seçildi");
              },
            ),
            ElevatedButton(
                onPressed: (){
                  if(radioDeger == 1){
                    print("Beşiktaş seçildi");
                  }
                  else{
                    print("Eskişehir seçildi");
                  }
                },
                child: Text("Goster")
            ),
          ],
        ),
      ),

    );
  }
}
