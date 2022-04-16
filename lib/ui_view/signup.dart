import 'package:cpks/ui_view/Login.dart';
import 'package:flutter/material.dart';


void main() => runApp(SignUp());


class SignUp extends StatelessWidget {
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
             color: Colors.black87,
             child: TextFormField(
               decoration: const InputDecoration(
                   hintText: "Password",
                   hintStyle: TextStyle(color: Colors.white),
                   border: InputBorder.none

               ),
             ),
           ),
           const SizedBox(height: 20,),
           MaterialButton(
             padding: const EdgeInsets.all(20),
             minWidth: 250,
             child: const Text("REGISTER", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             color: Colors.black,
             onPressed: (){},
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