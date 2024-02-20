import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/auth.dart';
import 'package:flutter_coffee/customdata.dart';
import 'package:flutter_coffee/widget/usercard_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List userFinalCards = [
    CustomData(
        title: 'Update your user',
        subtitle: 'We see that your profile has some informations missing.',
        iconsLead: Icons.person),
    CustomData(
        title: 'Share a cup, spread the perk',
        subtitle: 'Tell all your friend about this coffee day',
        iconsLead: Icons.share),
    CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),

        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),

        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),

        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),

        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),
        
        CustomData(
        title: 'Don\'t wait, caffeinate! Buy now',
        subtitle: 'Start your coffee jorney',
        iconsLead: Icons.coffee),

  ];

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Welcome!');
  }

  Widget _userUid() {
    return Text(
      user?.email ?? 'User email',
      style: TextStyle(color: Colors.amber.shade900),
    );
  }

  Widget _signOutButton() {
    return TextButton(
      onPressed: signOut,
      child: const Row(
        children: [
          Text(
            'Menu',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            width: 6,
          ),
          Icon(Icons.menu)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: _title(), actions: <Widget>[
          _signOutButton(),
        ]),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 4, left: 18, right: 18),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Logged in:'),
                  const SizedBox(
                    width: 4,
                  ),
                  _userUid(),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: userFinalCards.length,
                  itemBuilder: (context, index) {
                    return usercard(
                        userFinalCards[index].title,
                        userFinalCards[index].subtitle,
                        userFinalCards[index].iconsLead);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
