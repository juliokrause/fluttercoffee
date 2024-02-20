import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/auth.dart';
import 'package:flutter_coffee/error_handling.dart';

import 'package:flutter_coffee/widget/custom_button2.dart';
import 'package:flutter_coffee/widget/entry_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';

  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  void successfulLogin() {
    Navigator.of(context).pop();
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
      successfulLogin();
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message;
      setState(() {
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              authErrorCheck(e.code.toString()),
              style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Roboto'),
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Transform.rotate(
                        angle: -0.453,
                        child: Image.asset(
                          'images/barista.png',
                          scale: 2.4,
                        ),
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(height: 5),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: entryField('Enter your email', _controllerEmail,
                        false, Icons.person)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: entryField('Enter your password', _controllerPassword,
                      true, Icons.lock),
                ),
                const SizedBox(height: 20),
                InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  highlightColor: Colors.redAccent,
                  onTap: () {
                    setState(() {
                      signInWithEmailAndPassword();
                    });
                  },
                  child: CustomButton2(
                      buttonText: 'Login', btncolor: Colors.yellow.shade900),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
