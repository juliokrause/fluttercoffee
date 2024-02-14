import 'package:flutter/material.dart';
import 'package:flutter_coffee/widget/entry_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register yourself'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('fsafa'),
                entryField(
                    'Enter your name', _controllerEmail, false, Icons.email),
              ],
            )
          ],
        ));
  }
}
