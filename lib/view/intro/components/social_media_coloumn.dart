import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            delay: const Duration(milliseconds: 200),
            onTap: () => launchUrl(Uri.parse('https://linkedin.chandus7.in'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          delay: const Duration(milliseconds: 400),
          onTap: () => launchUrl(Uri.parse('https://github.chandus7.in')),
        ),
        SocialMediaIcon(
            icon: 'assets/icons/mail3.svg',
            delay: const Duration(milliseconds: 600),
            onTap: () => launchUrl(Uri.parse('mailto:dev@chandus7.in'))),
        SocialMediaIcon(
            icon: 'assets/icons/twitter.svg',
            delay: const Duration(milliseconds: 800),
            onTap: () => launchUrl(Uri.parse('https://x.chandus7.in'))),
        SocialMediaIcon(
            icon: 'assets/icons/whatsapp4.svg',
            delay: const Duration(milliseconds: 1000),
            onTap: () => launchUrl(Uri.parse('https://whatsapp.chandus7.in'))),
      ],
    );
  }
}
