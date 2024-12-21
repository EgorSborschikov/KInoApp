import 'package:flutter/cupertino.dart';

class GeneralButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GeneralButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.8; // 80% of the screen width

    return Container(
      width: buttonWidth,
      decoration: BoxDecoration(
        border: Border.all(color: CupertinoColors.systemYellow),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: CupertinoButton(
        onPressed: onPressed,
        color: CupertinoColors.systemYellow,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0, color: CupertinoColors.white),
        ),
      ),
    );
  }
}