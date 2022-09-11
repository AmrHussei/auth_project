import 'package:bminote_test_firebase/login.dart';
import 'package:bminote_test_firebase/sign_up.dart';
import 'package:bminote_test_firebase/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
      },
    );
  }
}
