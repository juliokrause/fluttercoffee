import 'package:flutter/material.dart';
import 'package:flutter_coffee/pages/login_page.dart';
import 'package:flutter_coffee/pages/register_page.dart';
import 'package:flutter_coffee/widget/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(235, 221, 255, 255),
          Color.fromARGB(235, 221, 255, 255)
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Burcu\'s',
                    style: TextStyle(
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Coffee CO',
                  style: TextStyle(
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const Wrap(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.energy_savings_leaf_rounded,
                      size: 35,
                    ),
                    Text(
                      'The best grain in Town!',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ]),
            Column(
              children: [
                const SizedBox(height: 25),
                const Hero(
                  tag: 'login_btn',
                  child: CustomButton(
                    buttonText: 'Login',
                    btncolor: Colors.amber,
                    path: LoginPage(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Hero(
                  tag: 'register_btn',
                  child: CustomButton(
                    buttonText: 'Register',
                    btncolor: Colors.orange.shade700,
                    path: const RegisterPage(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 130),
                    IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                            radius: 25,
                            child: Image.asset('images/google.png'))),
                    const SizedBox(height: 130),
                    IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                            radius: 25,
                            child: Image.asset('images/linkedin.png'))),
                    const SizedBox(height: 130),
                    IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                            radius: 25,
                            child: Image.asset('images/facebook.png'))),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
