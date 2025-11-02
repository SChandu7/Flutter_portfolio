import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
            launchUrl(Uri.parse('https://resume.chandus7.in'));
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
