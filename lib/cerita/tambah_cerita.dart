// ignore: unused_import
import 'package:cpks/cerita/tambah_cerita.dart';
import 'package:flutter/material.dart';

import 'baca_cerita.dart';

void main() => runApp(tambah_cerita());

class tambah_cerita extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: const _MyAppState(title: 'MyApp'),
  //   );
  // }
}

class _MyAppState extends State<tambah_cerita> {
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Tulis Cerpen"),
      ),
      backgroundColor: Colors.purple,
      body: ListView(children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "CERPEN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
             padding: const EdgeInsets.only(left :10),
             width: 500,
             height: 500,
             color: Colors.white,
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Isi Cerita.....",
                   border: InputBorder.none
               ),
               
             ),
           ),
           
        TextButton(
             child: const Text("Upload", style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18),),
             onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => baca_cerita()));
             },
      ),
      ]
    )
 )
    );
  }
}