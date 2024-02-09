import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/firebase_options.dart';
import 'package:flutter_coffee/pages/home_page.dart';
import 'package:flutter_coffee/widget_tree.dart';
import 'package:google_fonts/google_fonts.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //this  HERE
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform ); //this await HERE
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.ebGaramondTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WidgetTree(), //this  HERE
    );
  }
}
