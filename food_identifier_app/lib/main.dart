import 'package:flutter/material.dart';
import 'package:food_identifier_app/pages/splash_screen.dart';
import 'package:food_identifier_app/services/name_save.dart';

Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await NameSave().writeFirstSave();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Identifier App',
      theme : ThemeData(fontFamily:'Italiana'),
      home: const SplashScreen(),
    );
  }
}