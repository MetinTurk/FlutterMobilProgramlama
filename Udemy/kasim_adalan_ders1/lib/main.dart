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
      home: const MyHomePage(title: 'Flutter Demo Baslik'),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Uygulama Açıldı");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body:Align(
        alignment: Alignment.bottomCenter,
        child: Row(   //eğer center'ı silmek istersek alt enter remove this widget yapıp silebiliriz.
          mainAxisSize: MainAxisSize.min,
          children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Align(
              alignment: Alignment.topRight,
              child: Text("Deneme"),
            )
          ),
          ],
        ),
      )
      /*Center(    //Center dikeyde ortaladı fakat row'un içeriğine dokunamadı sadece kendi alanında ortalama yapabildi.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,  //Row'un içerisinde ortalama yaptık ekranın tam ortasına geldi.
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Center(
                  child: Text("Merhaba")    //alt + enter ile with center yapıyoruz kendi yazıyor.
              ),
              //Center(child: Text("Merhaba"),),   //bu uzun yolu
            ),
          ],
        ),
      )

       */

      /*Column(
        mainAxisSize: MainAxisSize.max,   //match parent gibi çalışır alanın tamamını kaplar.
        //mainAxisSize: MainAxisSize.min, //wrap content gibi çalışır yani içeriği kadar yer kaplar
        // crossAxisAlignment: CrossAxisAlignment.stretch, //mainAxisAlignment'ın tersi şeklinde çalışır. Row'da dikeyi hizalar. Column'da yatayı hizalar
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 80,height: 80,color: Colors.red,),
          Container(width: 50,height: 50,color: Colors.blue,),
          Container(width: 100,height: 100,color: Colors.green,),

        ],
      )
       */
          /*
      Row(children: [
        Container(
          margin: const EdgeInsets.only(top: 30.0,left: 5.00),
          width: 200,
          height: 200,

          child: Text("Merhaba"),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.blue,
              width: 3.0,
            ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ]
        ,)
      */
        
      
      /*Stack(
        children: [
          Container(width: 400, height: 400,color: Colors.red),
          Row(
            children: [
              Container(width: 100,height: 100,color: Colors.white),
              Container(width: 100,height: 100,color: Colors.blue),
              Column(
                children: [
                  Container(width: 100,height: 100,color: Colors.yellow),
                  Container(width: 100,height: 100,color: Colors.green),
                ],
              )
            ],
          ),
        ],
      )
*/

      /*Stack(
        children: [
          Container(width: 100,height: 100,color: Colors.red),
          Container(width: 50,height: 50,color: Colors.blue),
          Container(width: 25,height: 25,color: Colors.green),
          Text("Merhaba"),
        ],
      ),*/
      /*Column(   //Sütun
        children: [
          Text("Merhaba"),
          Container(width: 100,height: 100,color: Colors.red),
          Container(width: 50,height: 50,color: Colors.blue),
          Container(width: 25,height: 25,color: Colors.green),
        ],
      )*/
      /*Row(    //Satır
        children: [
          Text("Merhaba"),
          Container(width: 100,height: 100,color: Colors.red),
          Container(width: 80,height: 80,color: Colors.blue),
          Container(width: 25,height: 25,color: Colors.green),
        ],
      ),
      */

    );
  }
}
