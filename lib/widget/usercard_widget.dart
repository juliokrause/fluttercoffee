import 'package:flutter/material.dart';

Widget usercard(String title, String subtitle, IconData iconsLead) {
  return  Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading:  Icon(iconsLead),
          title: Text(title),
          subtitle:  Text(subtitle),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 8),
          ],
        ),
      ],
    ),
  );
}
