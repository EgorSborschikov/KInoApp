import 'package:auto_route/auto_route.dart';
import 'package:kino_app/features/pages/auth/registration/register_page/register_page.dart';
import 'package:kino_app/features/pages/auth/authorization/auth_page/auth_page.dart';
import 'package:kino_app/features/pages/home/home_page/home_page.dart';
import 'package:kino_app/features/pages/films/films_page/films_page.dart';
import 'package:kino_app/features/pages/properties/properties_page/properties_page.dart';
import 'package:kino_app/features/pages/theatres/theatres_page/theatres_page.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: RegisterPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: FilmsPage),
    AutoRoute(page: PropertiesPage),
    AutoRoute(page: TheatresPage),
  ],
)
class $AppRouter {}
