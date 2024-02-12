import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/auth.dart';
import 'package:flutter_coffee/pages/home_page.dart';
import 'package:flutter_coffee/widget/custom_button.dart';
import 'package:flutter_coffee/widget/custom_button2.dart';

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

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryField(String title, TextEditingController controller, bool isPassword) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      enableSuggestions: false,
      autocorrect: false,
      style: const TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          filled: false,
          labelText: title,
          labelStyle: const TextStyle(
            fontSize: 20,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Icon(
              Icons.lock,
            ),
          )),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Hum ? $errorMessage');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Transform.rotate(
                        angle: 0.50,
                        child: Image.asset(
                          'images/barista.png',
                          scale: 1.80,
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
                  child: _entryField('Enter your username', _controllerEmail, false)
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: _entryField('Enter your password', _controllerPassword, true),
                ),
                const SizedBox(height: 20),
                CustomButton2(
                    buttonText: 'Login',
                    btncolor: Colors.yellow.shade900),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
