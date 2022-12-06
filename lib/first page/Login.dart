import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/first%20page/register.dart';
import 'package:hyde_functional_responsive/pages/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              child: const TextField(
                cursorColor: Colors.white,
                cursorHeight: 25,
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'Password',
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
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const Home(title: 'home');
                                }));
                              },
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

          ],
        ),
      ),
    );
  }
}
