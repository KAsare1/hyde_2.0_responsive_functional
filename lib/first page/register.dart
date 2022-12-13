import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/first%20page/anonymouslogin.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class Register extends StatefulWidget {
  const Register({Key? key, required String title,}) : super(key: key);


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  Future signup() async{
    if(confirmedpassword()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim()
      );
    }else{
      print('error');
    }
  }

  bool confirmedpassword(){
   if(_passwordController.text.trim() == _confirmpasswordController.text.trim()){
     return true;
   }else{
     return false;
   }
  }

  @override
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
            const SizedBox(height: 2,),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                controller: _emailController,
                cursorColor: Colors.white,
                cursorHeight: 25,
                autofocus: true,
                style: const TextStyle(
                  color: Colors.white
                ),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'E-mail',
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
              child: const TextField(
                cursorColor: Colors.white,
                cursorHeight: 25,
                decoration: InputDecoration(
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
                controller: _passwordController,
                cursorColor: Colors.white,
                cursorHeight: 25,
                obscureText: true,
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: 'Create Password',
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
                controller: _confirmpasswordController,
                cursorColor: Colors.white,
                cursorHeight: 25,
                obscureText: true,
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: 'Confirm Password',
                ),
              ),
            ),

            const SizedBox(height: 20,),

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
                              onPressed: signup,
                              child: const Text('REGISTER',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?", style: TextStyle(color: Colors.white70),),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AnonyLog()),);
                }, child: const Text("Login", style: TextStyle(color: Colors.blue),))
              ],),
          ],
        ),
      ),
    );
  }
}

