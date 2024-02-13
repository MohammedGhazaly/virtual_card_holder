import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ScanPageProvider extends ChangeNotifier {
  getImage({required ImageSource imageSource}) async {
    final XFile? pickedImage =
        await ImagePicker().pickImage(source: imageSource);
    print("HI");
    if (pickedImage != null) {
      print(pickedImage.path);
    }
  }
}
