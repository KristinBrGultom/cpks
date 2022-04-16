import 'package:cpks/cerita/tambah_cerita.dart';
import 'package:flutter/material.dart';

void main() => runApp(kumpulan_cerita());

class kumpulan_cerita extends StatefulWidget {
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

class _MyAppState extends State<kumpulan_cerita> {
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("List Cerpen"),
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
          padding: const EdgeInsets.only(left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2017/02/26/00/23/ball-point-pen-2099187__480.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20,
            top: 7,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 194, 38, 71),
                  width: 2,
                  style: BorderStyle.solid)),
          width: 300,
          height: 150,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://img.wattpad.com/cover/225474548-256-k775627.jpg",
                ),
                decoration: const BoxDecoration(),
                height: 180,
                width: 210,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
                height: 140,
                child: const Center(
                    child: Text(
                  "ANTARES                     Diawali cara pertemuan yang klise, membuat Zea secara terpaksa harus berurusan dengan Ares, Ketua Geng Motor Calderioz…..",
                  style: TextStyle(fontSize: 15),
                )),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 68, 99),
                  width: 2,
                  style: BorderStyle.solid)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 68, 130),
                  width: 2,
                  style: BorderStyle.solid)),
          width: 300,
          height: 150,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://awsimages.detik.net.id/community/media/visual/2017/02/14/6bc20244-5a43-4c55-8bce-b15dd7460891_43.jpg?w=700&q=90",
                ),
                decoration: const BoxDecoration(),
                width: 210,
                height: 210,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
                height: 140,
                child: const Center(
                    child: Text(
                  "PASUTRI GAJE                   Sumber Inspirasi seputar Rumah Minimalis dalam hal Desain, Dekor, Renovasi bahkan sampai budgetnya. Channel ini ingin….",
                  style: TextStyle(fontSize: 15),
                )),
              ),
            ],
          ),
        ),
        TextButton(
             child: const Text("Tulis Cerpen", style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18),),
             onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const tambah_cerita()));
             },
      ),
      ]),
    ));
  }
}