import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Transform.rotate(
                  angle: 0.50,
                  child: Image.asset(
                    'images/barista.png',
                    scale: 1.35,
                  ),
                ),
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('fs'),
              )
            ],
          )
        ],
      ),
    );
  }
}
