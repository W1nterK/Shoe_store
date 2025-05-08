import  'package:matule/layers/presentation/screens/Create_user.dart';
import  'package:matule/layers/presentation/screens/forgot_passwordsrceen.dart';
import  'package:matule/layers/presentation/screens/signin_screen.dart';
import 'package:go_router/go_router.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
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
            routes: [],
          ),
        ],
      ),
    ],
  );
}
