import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:kino_app/features/components/text_fields/view_text_field.dart';
import '../../../../../routes/app_router.gr.dart';
import '../../../../components/buttons/button/view_button.dart';
import '../../../../components/buttons/text_button/view_text_button.dart'; // Import your generated router

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return CupertinoPageScaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Register',
          style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
        ),
        backgroundColor: theme.barBackgroundColor,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              'Please, register in app',
              style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle.copyWith(
                color: CupertinoColors.secondarySystemGroupedBackground,
              ),
            ),
            const SizedBox(height: 20),
            GeneralTextField(
              controller: _emailController,
              prefix: 'Nickname',
            ),
            const SizedBox(height: 20),
            GeneralTextField(
              controller: _passwordController,
              prefix: 'Password',
            ),
            const SizedBox(height: 20),
            GeneralTextButton(
              onPressed: () {
                context.router.push(AuthRoute());
              },
              text: 'Have account? Log in',
            ),
            const SizedBox(height: 20),
            GeneralButton(
              onPressed: () {
                // Add your registration logic here
              },
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
