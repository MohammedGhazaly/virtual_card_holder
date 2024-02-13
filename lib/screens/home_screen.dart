import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtual_card_holder/providers/bottom_nav_bar_provider.dart';

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
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
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
