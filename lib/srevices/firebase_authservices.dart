
import 'dart:async';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/welcome.dart';

class AuthServices {
 //final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> register({
    required String email, required String password, required String conform,required BuildContext context
  }) async {
  try{
   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
   Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome(),));
  //return user?.uid;
  } catch(e){
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
      content: Text(e.toString()),
    ));
    //print(e);
  }
   print('hello');
    }

  Future<void>login({
    required String email, required String password,required BuildContext context})async {
    try{
     var data= await  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
     Navigator.push(context,MaterialPageRoute(builder: (context) => const Welcome()));
    print(data);
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:Text(e.toString()),
      ));
    }
  }
}

