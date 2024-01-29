//GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: '/snackbar',
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

    GoRoute(path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(path: '/snackbar',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
  ],

);
