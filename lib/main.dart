import 'package:flutter/material.dart';
import 'package:practice_barber/presentation/auth_page/auth_page.dart';
import 'package:practice_barber/presentation/barber_page/barber_page.dart';
import 'package:practice_barber/presentation/practice_set_state.dart';
import 'package:practice_barber/presentation/sign_up_page/sign_up_page.dart';

import 'presentation/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My barber',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthPage(),
        '/home_page': (context) => const HomePage(),
        '/sign_up_page': (context) => const SignUpPage(),
        '/barber_page': (context) => const BarberPage(),
        '/my_barber': (context) => InputFieald()
      },
    );
  }
}
