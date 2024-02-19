import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/auth.dart';
import 'package:flutter_coffee/widget/usercard_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Welcome!');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return TextButton(
      onPressed: signOut,
      child: const Row(
        children: [
          Text('Menu', style: TextStyle(fontSize: 18),),
          SizedBox(width: 6,),
          Icon(Icons.menu)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _title(),
          actions:  <Widget> [_signOutButton(),]
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              usercard('Update your user', 'We noticed your user profile does not have all the information.', Icons.person_2_sharp),
              _userUid(),
              
            ],
          ),
        ));
  }
}
