// ignore: unused_import
import 'package:cpks/helper/authentication.dart';
import 'package:cpks/helper/signup.dart';


  final authentication  = authentication.instance;
  get user => authentication.currentUser;

 //SIGN UP METHOD
  Future signUp(String email, String password) async {
    try {
      await authentication.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    // ignore: nullable_type_in_catch_clause
    } on authentication catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  Future signIn(String email, String password) async {
    try {
      await authentication.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on authentication catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await authentication.signOut();

    print('signout');
  }