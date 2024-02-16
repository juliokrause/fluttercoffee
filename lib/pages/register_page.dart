import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/auth.dart';
import 'package:flutter_coffee/error_handling.dart';
import 'package:flutter_coffee/widget/custom_button2.dart';
import 'package:flutter_coffee/widget/entry_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
      successfulRegister();
    } on FirebaseAuthException catch (e) {
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

  void successfulRegister() {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Close',
                style: TextStyle(fontSize: 18),
              ))
        ],
        title: const Text(
          'Congratulations!',
          style: TextStyle(fontSize: 35),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'You have just signed up for the best application about Coffee deals',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/coffee-succ.png',
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register yourself'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/icons8-coffe-machine-96.png',
                  scale: 2.9,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Tell us a little more about yourself:',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: entryField(
                    'Your Email', _controllerEmail, false, Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: entryField(
                    'Your Password', _controllerPassword, true, Icons.lock),
              ),
              const SizedBox(height: 40),
              InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  highlightColor: Colors.redAccent,
                  onTap: () {
                    setState(() {
                      createUserWithEmailAndPassword();
                    });
                  },
                  child: const CustomButton2(
                      buttonText: 'Register', btncolor: Colors.amber)),
              const Row(
                children: [],
              )
            ],
          ),
        ));
  }
}
