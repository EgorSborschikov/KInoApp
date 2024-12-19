// lib/features/register_button.dart
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb, TargetPlatform;
import 'package:flutter/cupertino.dart';

class GeneralButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  GeneralButton({
      required this.onPressed, 
      required this.text
      }
    );

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS || kIsWeb) {
      return CupertinoButton(
        onPressed: onPressed,
        color: CupertinoColors.activeBlue,
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0, color: CupertinoColors.white),
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0),
        ),
      );
    }
  }
}
