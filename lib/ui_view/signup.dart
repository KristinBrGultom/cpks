import 'package:cpks/ui_view/Login.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:cpks/helper/authentication.dart';

void main() => runApp(const SignUp());


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

 // This widget is the root of your application.
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
             color: Colors.black87,
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Username",
                   hintStyle: TextStyle(color: Colors.white),
                   border: InputBorder.none
               ),
             ),
           ),
           const SizedBox(height: 10,),
           Container(
             padding: const EdgeInsets.all(10),
             width: 250,
             color: Colors.black87,
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Email",
                   hintStyle: TextStyle(color: Colors.white),
                   border: InputBorder.none
               ),
             ),
           ),
           const SizedBox(height: 10,),
           Container(
             padding: const EdgeInsets.all(10),
             width: 250,
             color: Color.fromARGB(221, 3, 3, 3),
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Password",
                   hintStyle: TextStyle(color: Color.fromARGB(255, 245, 244, 244)),
                   border: InputBorder.none

               ),
             ),
           ),
           const SizedBox(height: 20,),
           MaterialButton(
             padding: const EdgeInsets.all(20),
             minWidth: 250,
             child: const Text("REGISTER", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             color: Color.fromARGB(255, 10, 10, 10),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
             
           ),
           TextButton(
             child: const Text("Already registered? Login me", style: TextStyle(color: Colors.white)),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}