//GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  
   GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonScreen(),
    ),
  
   GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ],

);
