import 'package:flutter/material.dart';
// import 'package:tugas_praktikum/pages/login_page.dart';
import 'package:tugas_praktikum/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/register": (context) => RegisterPage(),
      },
      initialRoute: "/register",
    );
  }
}
