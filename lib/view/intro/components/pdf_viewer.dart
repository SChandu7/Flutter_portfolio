import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class PdfScreen extends StatelessWidget {
  final String pdfPath,
      pdfPath2 =
          "https://djangotestcase.s3.ap-south-1.amazonaws.com/S+Chandra+Sekhar+-+Resume+(30).pdf"; // Can be URL or local asset
  final String title;

  PdfScreen({required this.pdfPath, required this.title});

  Future<void> _openExternalViewer() async {
    final Uri url = Uri.parse(pdfPath2);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  bool get _shouldUseExternalViewer {
    if (kIsWeb) return true; // Always external in Web
    if (!Platform.isAndroid && !Platform.isIOS)
      return true; // PC/Mac/Linux - open externally
    return false; // Mobile → internal viewer
  }

  @override
  Widget build(BuildContext context) {
    // If device is Desktop/Web, auto redirect and close this screen
    if (_shouldUseExternalViewer) {
      Future.microtask(() async {
        await _openExternalViewer();
        Navigator.pop(context);
      });

      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // Mobile view (In-app PDF reader)
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: pdfPath.startsWith("http")
          ? SfPdfViewer.network(pdfPath)
          : SfPdfViewer.asset(pdfPath),
    );
  }
}
