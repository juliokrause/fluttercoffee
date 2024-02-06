import 'package:flutter/material.dart';
import 'package:flutter_coffee/pages/home_page.dart';
import 'package:flutter_coffee/widget/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: false,
                        labelText: 'Enter your username',
                        labelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Icon(
                            Icons.person,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: false,
                        labelText: 'Enter your password',
                        labelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Icon(
                            Icons.lock,
                          ),
                        )),
                  ),
                ),
                const SizedBox(height:20), 
                 CustomButton(buttonText: 'Loginz', path: const HomePage(), btncolor: Colors.yellow.shade900),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
