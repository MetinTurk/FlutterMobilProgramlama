import 'package:flutter/material.dart';

class time_date_picker_kullanimi extends StatefulWidget {
  const time_date_picker_kullanimi({super.key});

  @override
  State<time_date_picker_kullanimi> createState() => _time_date_picker_kullanimiState();
}

class _time_date_picker_kullanimiState extends State<time_date_picker_kullanimi> {
  var tfTarih = TextEditingController();
  var tfSaat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Time_date_picker"),
    ),
    body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: tfSaat,
          decoration: InputDecoration(
            hintText: "Saat Giriniz",
          ),
          onTap: (){
            showTimePicker(
                context: context,
                initialTime: TimeOfDay.fromDateTime(DateTime.now()),
            ).then((alinanSaat){
              setState(() {
                tfSaat.text = "${alinanSaat!.hour} : ${alinanSaat.minute}";
              });
            });
          },
        ),
        TextField(
          controller: tfTarih,
          decoration: InputDecoration(
            hintText: "Tarih Giriniz",
          ),
          onTap: (){
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2050),
            ).then((alinanTarih){
              setState(() {
                tfTarih.text = "${alinanTarih!.day}/${alinanTarih.month}/${alinanTarih.year}";
              });
            });
          },
        )
      ],
      ),
    ),
    );
  }
}
