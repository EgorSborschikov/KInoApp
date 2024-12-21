import 'package:flutter/cupertino.dart';
import 'package:kino_app/features/pages/auth/registration/view.dart';

import 'routes/app_router.gr.dart';

void main() {
  runApp(KinoApp());
}

class KinoApp extends StatelessWidget {
  final _appRouter = AppRouter();
  
  KinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Kino',
      debugShowCheckedModeBanner: false,
    );
  }
}