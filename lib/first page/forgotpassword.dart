import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Forgotpass extends StatefulWidget {
  const Forgotpass({Key? key}) : super(key: key);

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  final _emailController = TextEditingController();


  @override
  void dispose(){
  _emailController.dispose();
  super.dispose();
  }

  Future Passwordreset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(context: context, builder: (context)
      {
        return const AlertDialog(
          content: Text("havcbibasjkn"),
        );
      }
      );
    }on FirebaseAuthException catch(e){
      print(e);
      showDialog(context: context, builder: (context)
      {
        return AlertDialog(
        content: Text(e.message.toString()),
      );
      }
      );
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
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 2, 30, 10),
              child: const Text("Enter your E-mail Address to receive a password reset link", style: TextStyle(fontSize: 25, color: Colors.white60),),
            ),

            const SizedBox(height: 20,),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 2, 30, 10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                controller: _emailController,
                cursorColor: Colors.white,
                cursorHeight: 25,
                obscureText: false,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
                height: 51,
                width: 180,
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
                              onPressed: Passwordreset,
                              child: const Text('RESET PASSWORD',
                                style: TextStyle(fontSize: 15,
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

          ],
        ),
      ),
    );
  }
}
