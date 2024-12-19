import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GeneralTextField extends StatelessWidget{
  final String placeholder;
  final TextEditingController controller;

  const GeneralTextField({
      super.key, 
      required this.controller, 
      required this.placeholder
    }
  );
  
  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS || kIsWeb) {
      return CupertinoTextField(
        controller: controller,
        placeholder: placeholder,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          border: Border.all(color: CupertinoColors.separator),
          borderRadius: BorderRadius.circular(8.0),
        ),
      );
    } else {
      return TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: placeholder,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      );
    }
  }
}