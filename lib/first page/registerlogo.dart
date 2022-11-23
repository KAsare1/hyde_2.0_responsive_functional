import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/first%20page/register.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';


class Firstreg extends StatefulWidget {
  const Firstreg({Key? key}) : super(key: key);

  @override
  State<Firstreg> createState() => _FirstregState();
}

class _FirstregState extends State<Firstreg> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:
      [Colors.black,
        Colors.black]),
      
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
         Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Center(
                   child: Image.asset('HYDE_LOGO2.png')
               ),
         Container(
           margin: EdgeInsets.only(left: 10),
           height: 51,
            width: 160,
         child:      ClipRRect(
           borderRadius: BorderRadius.circular(20),

          child: Stack(
               children: <Widget>[
           Positioned.fill(
            child: Container(
            decoration: BoxDecoration(
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const Register(title: 'Register');
                      }));
                    },
                      child: const Text('GET STARTED', style: TextStyle(fontSize: 20, color: Colors.black), textAlign: TextAlign.center,),
       ),
                 ),
        ]
    )
         )
    )
             ]
      )]
    )
    );
  }
}
