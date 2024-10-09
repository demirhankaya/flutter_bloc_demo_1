import 'package:flutter_bloc_demo_1/core/enums/app_route.dart';
import 'package:flutter_bloc_demo_1/presentation/pages/login_view.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: AppRouteName.Login.path, routes: [
  GoRoute(
    path: AppRouteName.Login.path,
    name: AppRouteName.Login.withoutSplash,
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: AppRouteName.Home.path,
    name: AppRouteName.Home.withoutSplash,
    builder: (context, state) => const LoginView(),
  ),
]);
