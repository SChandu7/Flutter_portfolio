import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageViewer2 {
  ImageViewer2(BuildContext context, String title) {
    _loadImage(context, title);
  }

  Future<void> _loadImage(BuildContext context, String name) async {
    String cleanName = name.toLowerCase().replaceAll(" ", "_");

    // possible extensions
    List<String> extensions = [".png", ".jpg", ".jpeg"];

    String? validPath;

    for (String ext in extensions) {
      String path = "cert/$cleanName$ext";
      try {
        await rootBundle.load(path); // try loading
        validPath = path; // success → store
        break;
      } catch (_) {
        // continue checking next one
      }
    }

    if (validPath == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Image not found for: $name")),
      );
      return;
    }

    // If image exists → show it
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: name,
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: PhotoView(
                  imageProvider: AssetImage(validPath!),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
