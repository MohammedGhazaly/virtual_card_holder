import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtual_card_holder/providers/bottom_nav_bar_provider.dart';
import 'package:virtual_card_holder/utils/app_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavBarProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff0ea5e9)),
        useMaterial3: true,
      ),
    );
  }
}
