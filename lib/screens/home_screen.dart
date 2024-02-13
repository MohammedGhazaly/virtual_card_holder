import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
      ),
    );
  }
}
