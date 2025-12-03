import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    final bool isNetwork = image.startsWith("http") || image.startsWith("https");

    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.9),
      transitionDuration: const Duration(milliseconds: 400),
      barrierDismissible: true,
      barrierLabel: 'Close',
      context: context,
      pageBuilder: (_, __, ___) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Stack(
                  children: [
                    Center(
                      child: PhotoView(
                        imageProvider: isNetwork
                            ? NetworkImage(image)
                            : AssetImage(image) as ImageProvider,

                        // Shimmer loader + fallback messages
                        loadingBuilder: (context, event) => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),

                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
                          child: Text(
                            "⚠ Failed to load image",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),

                    // Close button
                    Positioned(
                      top: 20,
                      right: 20,
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
