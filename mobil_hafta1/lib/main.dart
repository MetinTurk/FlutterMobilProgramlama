import 'package:flutter/material.dart';
import 'package:mobil_hafta1/personel.dart';

void main() {
    int a = 5;
    double b = 5.2;
    var ad = 'deneme';
    var numara = '1656465';
    var sayi  = int.parse(numara);
    print('$sayi');
    print('$ad');
    for(int i = 0;i<10;i++){
      print('$numara');
    }
    List<int> liste = []; //boş dizi tanımlaması
    liste.add(4);
    liste.add(5);
    liste.add(6);
    List<String> dizi = ["deneme1" , "deneme2" , "deneme3"];

    List<Personel> pliste = [];
                                  //constracter değişti.
    //Personel p = Personel("personel", "personel123");
    Personel p = Personel(_adi: "personel", _soyadi:"personel123");
    pliste.add(p);
    for(var element in pliste){
      print('${element.adi}');
    }
    List<dynamic> karisikListe = ["İstanbul", 15, true];

    print('$dizi');
    for(var elemts in liste){
      print('$elemts');
    }

    int i = 0;
    while(i < dizi.length){
      print('${dizi[i]}');
      i++;
    }
    Map<int,String> plakalar={16:"Bursa",34: "İstanbul",35: "İzmir"};
    print(plakalar);
    Map<double,String> mliste={};
    mliste[0] = "denememap";
    mliste[15] = "burdur";
    for (var element in mliste.keys){
      print('${mliste[element]}');
    }
    Map <dynamic,dynamic> sozluk={"x":25, "a":"ali",3:["k","1","m"],"y":{10,20,30}};
    int yas= 25;
    if(yas > 20) {
      print("Ehliyet alabilir");
    }
    else if(yas == 0){
      print("daha yeni dünyaya geldin");
    }
    else {
      print("Ehliyet alamaz");
    }
    yas > 20 ? print("Ehliyet alabilir"):print("Ehliyet alamaz");

    double sonuc = p.yazdir("160");

    //ilk değer ataması yapmak istemediğimizde kullanırz.
    int? sayi1;double? sonuc1;
    sayi1 = 5;
    print(sonuc1);
    bol(sayi1! ,5);

  //runApp(const MyApp());
}
double bol(int bolunen , int bolen){
  return bolunen/bolen;
}






class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
