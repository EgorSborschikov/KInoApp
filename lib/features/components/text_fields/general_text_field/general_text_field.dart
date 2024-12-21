import 'package:flutter/cupertino.dart';

class GeneralTextField extends StatelessWidget {
  final String prefix;
  final TextEditingController controller;

  const GeneralTextField({
    super.key,
    required this.controller,
    required this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textFieldWidth = screenWidth * 0.8; // 80% of the screen width

    return Container(
      width: textFieldWidth,
      child: CupertinoTextField(
        controller: controller,
        prefix: Text(prefix),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          border: Border.all(color: CupertinoColors.separator),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
