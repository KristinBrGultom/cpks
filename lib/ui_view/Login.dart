import 'package:cpks/cerita/kumpulan_cerita.dart';
import 'package:cpks/ui_view/signup.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(Login());

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.purple,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Container(
             padding: const EdgeInsets.all(10),
             width: 250,
             color: Colors.white,
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Username",
                   border: InputBorder.none
               ),
             ),
           ),
           const SizedBox(height: 10,),
           Container(
             padding: const EdgeInsets.all(10),
             width: 250,
             color: Colors.white,
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Password",
                   border: InputBorder.none
               ),
             ),
           ),
           const SizedBox(height: 20,),
           MaterialButton(
             padding: const EdgeInsets.all(20),
             minWidth: 250,
             color: Colors.white,
             child: const Text("Login", style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),),
             onPressed: () {
              Navigator.push(
                   context, MaterialPageRoute(builder: (context) => kumpulan_cerita()));
             },
           ),
           TextButton(
             child: const Text("Sign in",
               style: TextStyle(color: Colors.white),),
             onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           )
         ],
       ),
     ),
   );
 }
}