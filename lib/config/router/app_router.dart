//GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/buttons',
  routes: [
    GoRoute(
      path: '/',
      name:HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  
   GoRoute(
      path: '/buttons',
      name: ButtonScreen.name,
      builder: (context, state) => const ButtonScreen(),
    ),
  
   GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
  ],

);
