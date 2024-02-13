import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

class ScanPageProvider extends ChangeNotifier {
  final TextRecognizer textRecognizer = TextRecognizer(
    script: TextRecognitionScript.latin,
  );

  Future<void> extractTextFromImage({required ImageSource imageSource}) async {
    EasyLoading.show(status: "Recognizing Card & extracting text");

    final XFile? xFile = await getImage(imageSource: imageSource);
    await recognizeText(xfile: xFile);
    EasyLoading.dismiss();
  }

  Future<XFile?> getImage({required ImageSource imageSource}) async {
    final XFile? pickedImage =
        await ImagePicker().pickImage(source: imageSource);
    if (pickedImage != null) {
      return pickedImage;
    }
  }

  Future<void> recognizeText({required XFile? xfile}) async {
    final recognizedText = await textRecognizer
        .processImage(InputImage.fromFile(File(xfile!.path)));
    final tempList = [];
    for (var block in recognizedText.blocks) {
      for (var line in block.lines) {
        tempList.add(line.text);
      }
    }
  }
}
