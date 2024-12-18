import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralTextField extends StatelessWidget{
  final String placeholder;
  final String prefix;
  final bool obscureText;
  final TextEditingController controller;

  const GeneralTextField({
      super.key, 
      required this.placeholder, 
      required this.prefix, 
      required this.obscureText, 
      required this.controller
    }
  );
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CupertinoTextField(
        obscureText: obscureText,
        controller: controller,
        prefix: Text(
          prefix,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        placeholder: placeholder,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[800] : Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: isDarkMode ? Colors.grey[700]! : Colors.grey[300]!,
            width: 1.0,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        style: theme.textTheme.titleMedium,
      ),
    );
  }

}