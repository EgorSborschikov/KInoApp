import 'package:flutter/material.dart';
import 'package:kino_app/features/components/text_fields/view_text_field.dart';

class RegisterPage extends StatelessWidget{
  final TextEditingController _emailController = TextEditingController();

  RegisterPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GeneralTextField(
              placeholder: 'required', 
              prefix: 'Email:', 
              obscureText: false, 
              controller: _emailController,
            ),
          ],
        ),
      ),
    );
  }
}