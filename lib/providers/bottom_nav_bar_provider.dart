import 'package:flutter/widgets.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentIndex = 0;
  void onTap(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
