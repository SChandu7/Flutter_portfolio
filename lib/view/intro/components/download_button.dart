import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/pdf_viewer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pdfx/pdfx.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatefulWidget {
  const DownloadButton({super.key});

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PdfScreen(
                  pdfPath: "assets/resume.pdf",
                  title: "None",
                ),
              ),
            );

            // launchUrl(Uri.parse('https://resume.chandus7.in'));
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      Colors.purpleAccent.withOpacity(_isHovering ? 0.7 : 0.4),
                  spreadRadius: 2,
                  blurRadius: _isHovering ? 18 : 12,
                  offset: const Offset(0, 0),
                ),
                BoxShadow(
                  color:
                      Colors.purpleAccent.withOpacity(_isHovering ? 0.4 : 0.3),
                  spreadRadius: 1,
                  blurRadius: _isHovering ? 25 : 15,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Download CV',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(width: defaultPadding / 3),
                const Icon(
                  FontAwesomeIcons.download,
                  color: Colors.white70,
                  size: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResumeViewer extends StatefulWidget {
  @override
  _ResumeViewerState createState() => _ResumeViewerState();
}

class _ResumeViewerState extends State<ResumeViewer> {
  late PdfController _pdfController;
  bool isMobile = true;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/resume.pdf'),
    );

    // Detect mobile vs desktop/web
    try {
      if (Platform.isAndroid || Platform.isIOS) {
        isMobile = true;
      } else {
        isMobile = false;
      }
    } catch (_) {
      // Web goes here
      isMobile = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Desktop/Web -> Scroll normally
          // Mobile -> Zoom + Scroll
          isMobile
              ? InteractiveViewer(
                  minScale: 1,
                  maxScale: 5,
                  child: PdfView(controller: _pdfController),
                )
              : SingleChildScrollView(
                  child: PdfView(controller: _pdfController),
                ),

          /// Close button
          Positioned(
            top: 40,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.85),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.close, color: Colors.black, size: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
