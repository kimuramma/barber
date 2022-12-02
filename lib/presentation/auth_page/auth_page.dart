import 'package:flutter/material.dart';
import 'package:practice_barber/presentation/constants.dart';

import 'auth_companents.dart';

class AuthPage extends StatelessWidget {
  AuthPage({
    Key? key,
  }) : super(key: key);
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kBackgroundyColor,
      body: Center(
        child: Container(
          height: 330,
          width: 327,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              FormWidget(
                obscureText: false,
                firstColor: const Color(0XFFFFB800),
                secondColor: const Color(0XFFFF004D),
                labelText: 'Email',
                prefIcon: const Icon(Icons.email_outlined),
                controller: loginController,
              ),
              const SizedBox(
                height: 10,
              ),
              FormWidget(
                obscureText: true,
                firstColor: const Color(0XFFFFB800),
                secondColor: const Color(0XFFFF004D),
                labelText: 'Password',
                prefIcon: const Icon(Icons.remove_red_eye_outlined),
                controller: passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButtonWithGradient(
                ontap: () {
                  Navigator.of(context).pushNamed('/home_page');
                },
                text: 'Login',
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sign_up_page');
                  },
                  child: const Text(
                    "or Sign Up",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
