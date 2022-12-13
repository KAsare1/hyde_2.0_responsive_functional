import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/first%20page/forgotpassword.dart';
import 'package:hyde_functional_responsive/first%20page/register.dart';

class AnonyLog extends StatefulWidget {
  const AnonyLog({Key? key}) : super(key: key);

  @override
  State<AnonyLog> createState() => _AnonyLogState();
}

class _AnonyLogState extends State<AnonyLog> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  Future _SignIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcontroller.text.trim(), password: _passwordcontroller.text.trim());
  }

  @override
  void dispose(){
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
}

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/HYDE_LOGO2.png'),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 2, 30, 10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                controller: _emailcontroller,
                cursorColor: Colors.white,
                cursorHeight: 25,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'Username',
                ),
              ),
            ),

            const SizedBox(height: 20,),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 2, 30, 10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                controller: _passwordcontroller,
                cursorColor: Colors.white,
                cursorHeight: 25,
                obscureText: true,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'Password',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Forgotpass()));
                }, child: const Text('Forgot Password?')),),
              ],
            ),
            const SizedBox(height: 5,),
            SizedBox(
                height: 51,
                width: 160,
                child:      ClipRRect(
                    borderRadius: BorderRadius.circular(20),

                    child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(251, 162, 162, 100)
                              ),
                            ),
                          ),
                          Center(
                            child: TextButton(
                              style:
                              TextButton.styleFrom(
                                padding: const EdgeInsets.all(10.0),
                                textStyle: const TextStyle(fontSize: 30),
                              ),
                              onPressed: _SignIn,
                              child: const Text('LOGIN',
                                style: TextStyle(fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                    )
                )
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?", style: TextStyle(color: Colors.white70),),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register(title: 'register')),);
                }, child: const Text("Register", style: TextStyle(color: Colors.blue),))
              ],),

          ],
        ),
      ),
    );
  }
}
