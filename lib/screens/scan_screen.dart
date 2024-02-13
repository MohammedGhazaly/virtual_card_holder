import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:virtual_card_holder/providers/scan_page_provider.dart';

class ScanScreen extends StatelessWidget {
  static const String routeName = "scan-screen";
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScanPageProvider(),
      lazy: true,
      child: Builder(builder: (context) {
        final scanPageProvider = Provider.of<ScanPageProvider>(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Scan Page"),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      scanPageProvider.getImage(
                          imageSource: ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("Capture"),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      scanPageProvider.getImage(
                          imageSource: ImageSource.gallery);
                    },
                    icon: const Icon(Icons.photo),
                    label: const Text("Gallery"),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
