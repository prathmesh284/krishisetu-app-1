import 'package:flutter/material.dart';
import 'package:krishisetu/pages/welcome_page.dart';

void main() {
  runApp(const KrishiSetuApp());
}

class KrishiSetuApp extends StatelessWidget {
  const KrishiSetuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KrishiSetu',
      theme: ThemeData(
        primaryColor: const Color(0xFF62d411),
        scaffoldBackgroundColor: const Color(0xFFF7F8F6),
        textTheme: const TextTheme(bodyMedium: TextStyle(fontFamily: 'Lexend')),
      ),
      home: const WelcomePage(),
    );
  }
}
