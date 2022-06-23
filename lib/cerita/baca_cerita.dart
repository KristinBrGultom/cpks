import 'package:cpks/cerita/perpus_cerita.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kumpulan_cerita.dart';

class baca_cerita extends StatefulWidget {
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

class _MyAppState extends State<baca_cerita> {
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Baca Cerpen"),
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
        Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://img.wattpad.com/cover/225474548-256-k775627.jpg",
                ),
                decoration: const BoxDecoration(),
                width: 210,
                height: 210,
              ),
              const Text(
             "Antares",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),
              const Text(
             "rweinda",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),
              const Text(
             "Romance, Action, Badboy, Anak SMA",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),
              const Text(
             "Antares, sang ketua geng motor Calderioz. Antares memiliki 5 orang sahabat yang bernama Jordan, Aiden, Megan, Laskar, dan Moreo. Mereka juga merangkak menjadi anggota inti dari geng motor Calderioz. Pertemuan mereka diawali dengan sebuah insiden yang tanpa sengaja malah  membuat mereka semakin dekat. Zea yang pada awal masuk sekolah tidak berniat berurusan dengan geng motor, tetapi kini ia terlibat di dalamnya.Ia harus berurusan dengan Ares akibat insiden yang dibuatnya. Lambat laun Ares mulai menyadari bahwa",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),
              const SizedBox(
                width: 10,
              ),
              
        const SizedBox(
          height: 10,
          
        ),
        MaterialButton(
             padding: const EdgeInsets.all(20),
             minWidth: 250,
             color: Colors.white,
             child: const Text("Perpustakaan", style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),),
             onPressed: () {
              Navigator.push(
                   context, MaterialPageRoute(builder: (context) => perpus_cerita()));
             },
        )
      ])
        )
    );
  }
}