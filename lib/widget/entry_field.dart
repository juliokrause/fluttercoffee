import 'package:flutter/material.dart';

Widget entryField(String title, TextEditingController controller,
      bool isPassword, IconData theIcon) {
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
          prefixIcon: Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Icon(
              theIcon,
            ),
          )),
    );
  }