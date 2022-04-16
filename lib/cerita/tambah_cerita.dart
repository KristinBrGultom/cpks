import 'package:flutter/material.dart';

void main() => runApp(const tambah_cerita());

// ignore: camel_case_types
class tambah_cerita extends StatefulWidget {
  const tambah_cerita({Key? key}) : super(key: key);

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
        title: const Text("Tambah Cerita"),
      ),
      backgroundColor: Colors.purple,
     body: Container( 
      padding: const EdgeInsets.only(left: 20), 
      margin: const EdgeInsets.all(20), 
      height: 90, 
      width: 100, 
      alignment: Alignment.topCenter, 
        color: Colors.white, 
       child: const Text( 
       'tambah gambar', 
      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 8, 8, 8)), 
 
       ))), 
       ); 
    // ignore: dead_code
    Container( 
       color: const Color.fromARGB(255, 249, 248, 250), 
      alignment: Alignment.topLeft, 
        child: const Text( 
       "Isi ", 
        style: TextStyle(fontSize: 30, color: Colors.white)), 
        height: 200.0, 
        width: 200.0, 
  );
  }
}