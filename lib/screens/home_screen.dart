import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:virtual_card_holder/providers/bottom_nav_bar_provider.dart';
import 'package:virtual_card_holder/screens/scan_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          context.goNamed(ScanScreen.routeName);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          bottomNavBarProvider.currentIndex == 0
              ? "All Contact List"
              : "Favorite",
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 65,
        // color: Colors.red,
        padding: const EdgeInsets.all(0),
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xffbae6fd),
          currentIndex: bottomNavBarProvider.currentIndex,
          onTap: bottomNavBarProvider.onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "All",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
          ],
        ),
      ),
    );
  }
}
