import 'package:flutter/material.dart';
import 'package:loginwithfirebase/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginwithfirebase/screens/register.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ...

void main() async {
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}
