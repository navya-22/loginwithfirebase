import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Text('WELCOME',style: TextStyle(fontSize: 50,color: Colors.white),),
      ),
    );
  }
}
