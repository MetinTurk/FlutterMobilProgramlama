import 'package:flutter/material.dart';

class Localeimage extends StatefulWidget {
  const Localeimage({super.key});

  @override
  State<Localeimage> createState() => _LocaleimageState();
}

class _LocaleimageState extends State<Localeimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Locale Image Kullanimi",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset
          ],
        ),
      )
    );
  }
}
