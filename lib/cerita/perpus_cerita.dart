import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class perpus_cerita extends StatefulWidget {
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

class _MyAppState extends State<perpus_cerita> {
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Perpustakaan"),
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
             
        const SizedBox(
          height: 10,
          
        ),
         Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1426980134l/25191081.jpg",
                ),
                decoration: const BoxDecoration(),
                width: 210,
                height: 210,
              ),
              const Text(
             "Danur",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),
             
        const SizedBox(
          height: 10,
        ),
        Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://ebooks.gramedia.com/ebook-covers/5399/big_covers/ID_EMK2013MTH06MKUN_B.jpg",
                ),
                decoration: const BoxDecoration(),
                width: 210,
                height: 210,
              ),
              const Text(
             "Malin Kundang ",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),
        Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://ebooks.gramedia.com/ebook-covers/47118/image_highres/ID_KDTTSTL2019MTH04.jpg",
                ),
                decoration: const BoxDecoration(),
                width: 210,
                height: 210,
              ),
              const Text(
             "Kisah Danau Toba ",
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
              ),    
        const SizedBox(
          height: 10,
        )
      ]),     
      )
        );
  }
  }
