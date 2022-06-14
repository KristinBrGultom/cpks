import 'package:cpks/cerita/kumpulan_cerita.dart';
import 'package:cpks/ui_view/Login.dart';
import 'package:cpks/ui_view/signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Login Regiter',
     theme: ThemeData(
       primarySwatch: Colors.purple,
     ),
     home: HomePage(),
     
   );
 }
}
// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
 // ignore: annotate_overrides
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.purple,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           // ignore: prefer_const_constructors
           Icon(Icons.android, color: Colors.purple),
           const SizedBox(height: 200,),
           const Text("CERPEN",
               style: TextStyle(color: Colors.black,fontFamily: 'Algerian', fontSize: 53)),
           
           MaterialButton(
             minWidth: 210,
             color: Colors.white,
             textColor: const Color.fromARGB(255, 164, 64, 184),
             child: const Text("Sign Up",
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           ),
           TextButton(
             child: const Text("Log In", style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18),),
             onPressed: () {

               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}