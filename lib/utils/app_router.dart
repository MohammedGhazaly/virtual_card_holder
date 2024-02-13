import 'package:go_router/go_router.dart';
import 'package:virtual_card_holder/screens/home_screen.dart';
import 'package:virtual_card_holder/screens/scan_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        name: HomeScreen.routeName,
        path: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: ScanScreen.routeName,
            name: ScanScreen.routeName,
            builder: (context, state) => const ScanScreen(),
          )
        ]),
  ]);
}
