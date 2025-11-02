// ignore: undefined_prefixed_name
import 'dart:ui' as ui;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class ConnectButton extends StatefulWidget {
  const ConnectButton({super.key});

  @override
  State<ConnectButton> createState() => _ConnectButtonState();
}

class _ConnectButtonState extends State<ConnectButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://wa.me/+919949597079'));
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: 68,
            width: 154,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: const LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.blue,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      Colors.purpleAccent.withOpacity(_isHovering ? 0.7 : 0.6),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.greenAccent,
                  size: 15,
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  'Whatsapp',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
