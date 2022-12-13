import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/authenticate.dart';
import 'package:hyde_functional_responsive/first%20page/anonymouslogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());}

class GlobalContextService {
  static GlobalKey <NavigatorState> navigatorKey =
  GlobalKey <NavigatorState> ();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: GlobalContextService.navigatorKey,
      routes: {'/': (context) => const Authenicate()},
    );
  }
}
