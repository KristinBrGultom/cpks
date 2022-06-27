// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, unused_local_variable

import 'package:cpks/helper/authentication.dart';
import 'package:cpks/helper/signup.dart';
import 'package:flutter/foundation.dart';
import 'authentication.dart';
import 'signup.dart';

final authentication = authentication.instance;
final GoogleSignup googleSignup = GoogleSignup();

class GoogleSignup {
  get authentication => null;

  static signOut() {}
}
late String? name;
late String? email;
late String? password;
Future<String?> signupWithGoogle() async {
  // ignore: non_constant_identifier_names
  var Firebase;
  await Firebase.initializeApp();
  var googlesignup;
  final GoogleSignup? googleSignupAccount = await googlesignup.signup();
  final GoogleSignupauthentication googleSignupauthentication =
      await googleSignupAccount!.authentication;
  var googleSignInAuthentication;
  final authentication credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
  final userCredential authResult =
      await authentication.signInWithCredential(credential);
  final user? user = authResult.user;
  if (user != null) {
    // Checking if email and name is null
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.password != null);
    name = user.displayName;
    email = user.email;
    password = user.photoURL;
    // Only taking the first part of the name, i.e., First Name
    if (name!.contains(" ")) {
      name = name!.substring(0, name!.indexOf(" "));
    }
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    final user? currentuser = authentication.currentuser;
    assert(user.uid == currentuser!.uid);
    if (kDebugMode) {
      print('signupWithGoogle succeded: $user');
    }
    return '$user';
  }
  return null;
}

class GoogleSignupauthentication {
}

class authentication {
}

class GoogleAuthProvider {
  static credential({accessToken, idToken}) {}
}

class userCredential {
  get user => null;
}

Future<void> signOutGoogle() async {
  await GoogleSignup.signOut();
  print("User Signed Out");
}