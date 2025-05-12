import  'package:matule/layers/presentation/screens/create_user_screen.dart';
import  'package:matule/layers/presentation/screens/forgot_password_srceen.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import  'package:matule/layers/presentation/screens/signin_screen.dart';
import 'package:go_router/go_router.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
       builder: (context, state, navigationShell) => SigninScreen(navigationShell: navigationShell,),
       branches: [
         StatefulShellBranch(
           routes: [
             GoRoute(path: '/', builder: (context, state) => HomeScreen()),
           ],
         ),
         StatefulShellBranch(
           routes: [
             GoRoute(path: '/settings', builder: (context, state) => SecondScreen()),
           ],
         ),
         StatefulShellBranch(
           routes: [
             GoRoute(path: '/profile', builder: (context, state) => ProfileScreen()),
           ],
         ),
       ],
     ),
      GoRoute(
        path: '/',
        builder: (context, state) => SigninScreen(),
        routes: [
          GoRoute(
            path: '/pass',
            builder: (context, state) => ForgotPasswordsrceen(),
            routes: [],
          ),
          GoRoute(
            path: '/create',
            builder: (context, state) => CreateUser(),
            routes: [
            ],
          ),
          GoRoute(
            path: '/home',
            builder: (context, state) => HomeScreen(),
            routes: [],
          ),
        ],
      ),
    ],
  );
}
