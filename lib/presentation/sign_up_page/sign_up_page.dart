import 'package:flutter/material.dart';
import 'package:practice_barber/presentation/constants.dart';

import 'sign_up_companents.dart';

@immutable
// ignore: must_be_immutable
class SignUpPage extends StatefulWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneNumeController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPassController = TextEditingController();
  bool switchVal = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundyColor,
        appBar: AppBar(
          backgroundColor: kBackgroundyColor,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Container(
              width: 326,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimaryColor),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SignUpFormWidget(
                      obscureText: false,
                      firstColor: const Color(0XFFFFB800),
                      secondColor: const Color(0XFFFF004D),
                      labelText: 'Username',
                      prefIcon: const Icon(Icons.person),
                      controller: _usernameController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SignUpFormWidget(
                      obscureText: false,
                      firstColor: const Color(0XFFFFB800),
                      secondColor: const Color(0XFFFF004D),
                      labelText: 'Email',
                      prefIcon: const Icon(Icons.email_outlined),
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SignUpFormWidget(
                      obscureText: false,
                      firstColor: const Color(0XFFFFB800),
                      secondColor: const Color(0XFFFF004D),
                      labelText: 'Phone number',
                      prefIcon: const Icon(Icons.email_outlined),
                      controller: _phoneNumeController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SignUpFormWidget(
                      obscureText: true,
                      firstColor: const Color(0XFFFFB800),
                      secondColor: const Color(0XFFFF004D),
                      labelText: 'Password',
                      prefIcon: const Icon(Icons.remove_red_eye),
                      controller: _passwordController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SignUpFormWidget(
                      obscureText: true,
                      firstColor: const Color(0XFFFFB800),
                      secondColor: const Color(0XFFFF004D),
                      labelText: 'Confirm password',
                      prefIcon: const Icon(Icons.remove_red_eye),
                      controller: _confirmPassController,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Row(
                        children: [
                          Switch(
                              activeColor: const Color(0XFFFFB800),
                              value: switchVal,
                              onChanged: (bool value) {
                                setState(() => switchVal = value);
                              }),
                          const Text(
                              "Ознакомлен с правилой \n и политикой сайта",
                              style: TextStyle(
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ),
                    SignUpElevatedButtonWithGradient(
                      text: 'Sign Up',
                      ontap: () {
                        Navigator.of(context).pushNamed('/home_page');
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: const Text(
                          "or Login",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
