import 'package:flutter/cupertino.dart';
import 'package:kino_app/features/components/bars/bottom_navigation_bar/view_bottom_navigation_bar.dart';
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
      builder: (context, router) {
        return CustomBottomNavigationBar();
      },
      debugShowCheckedModeBanner: false,
    );
  }
}