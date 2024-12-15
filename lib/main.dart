import 'package:chatapp/auth/loginorregister.dart';
import 'package:chatapp/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginOrRegister(),
      theme: lightMode,
    );
  }
}




