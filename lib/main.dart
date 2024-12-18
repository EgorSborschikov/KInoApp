import 'package:flutter/material.dart';
import 'package:kino_app/features/pages/auth/registration/register_page/register_page.dart';

void main() {
  runApp(const KinoApp());
}

class KinoApp extends StatelessWidget {
  const KinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kino',
      debugShowCheckedModeBanner: false,
      home: RegisterPage()
    );
  }
}