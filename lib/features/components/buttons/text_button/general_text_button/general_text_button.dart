import 'package:flutter/cupertino.dart';

class GeneralTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GeneralTextButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.systemYellow,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
