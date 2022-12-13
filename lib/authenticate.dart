import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/first%20page/Login.dart';
import 'package:hyde_functional_responsive/first%20page/anonymouslogin.dart';
import 'package:hyde_functional_responsive/pages/home.dart';

class Authenicate extends StatefulWidget {
  const Authenicate({Key? key}) : super(key: key);

  @override
  State<Authenicate> createState() => _AuthenicateState();
}

class _AuthenicateState extends State<Authenicate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            return const Home(title: 'home');
          }else{
            return const AnonyLog();
          }
      },
      ),
    );
  }
}
