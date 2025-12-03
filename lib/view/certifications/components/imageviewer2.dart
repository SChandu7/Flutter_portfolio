import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageViewer2 {
  ImageViewer2(BuildContext context, String fileUrl) {
    _handleFile(context, fileUrl);
  }

  void _handleFile(BuildContext context, String url) async {
    final lowerUrl = url.toLowerCase();

    // check file type using extension
    bool isImage = lowerUrl.endsWith(".png") ||
        lowerUrl.endsWith(".jpg") ||
        lowerUrl.endsWith(".jpeg") ||
        lowerUrl.endsWith(".webp");

    bool isPDF = lowerUrl.endsWith(".pdf");

    if (isImage) {
      _showImage(context, url);
    } else if (isPDF) {
      _openPDF(context, url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("⚠ Unsupported file format")),
      );
    }
  }

 void _showImage(BuildContext context, String imageUrl) {
  showGeneralDialog(
    barrierColor: Colors.black.withOpacity(0.9),
    transitionDuration: const Duration(milliseconds: 300),
    barrierDismissible: true,
    barrierLabel: 'Close', // 👈 FIXED
    context: context,
    pageBuilder: (_, __, ___) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
              child: PhotoView(
                imageProvider: NetworkImage(imageUrl),
                loadingBuilder: (c, _) => const CircularProgressIndicator(color: Colors.white),
                errorBuilder: (c, _, __) => const Text(
                  "⚠ Failed to load image",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      );
    },
  );
}


  void _openPDF(BuildContext context, String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("❌ Cannot open PDF")),
      );
    }
  }
}
