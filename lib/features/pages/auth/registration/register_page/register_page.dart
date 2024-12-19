import 'package:flutter/material.dart';
import 'package:kino_app/features/components/buttons/general_button/general_button.dart';
import 'package:kino_app/features/components/text_fields/view_text_field.dart';

class RegisterPage extends StatelessWidget{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegisterPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              'Please, register in app',
              style: Theme.of(context).textTheme.headlineLarge
            ),
            const SizedBox(height: 20),
            GeneralTextField(
              controller: _emailController, 
              placeholder: 'Nickname'
            ),
            const SizedBox(height: 20),
            GeneralTextField(
              controller: _passwordController, 
              placeholder: 'Password'
            ),
            const SizedBox(height: 20),
            Text(
              'Have account? Log in',
            ),
            const SizedBox(height: 20),
            GeneralButton(
              onPressed: () {
                
              }, 
              text: 'Register'
            ),
          ],
        ),
      ),
    );
  }
}