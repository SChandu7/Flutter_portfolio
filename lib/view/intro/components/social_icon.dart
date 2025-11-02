import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart'; // ✨ Animation package
import '../../../res/constants.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.delay = Duration.zero, // 👈 Optional delay for staggered animation
  });

  final String icon;
  final VoidCallback? onTap;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
        child: SvgPicture.asset(
          icon,
          color: Colors.white,
          height: 15,
          width: 15,
        )
            // 🎬 Animate each icon with delay
            .animate(delay: delay)
            .slideY(
              begin: -1.5, // Slide from top
              end: 0,
              curve: Curves.easeOutBack,
              duration: const Duration(milliseconds: 700),
            )
            .fadeIn(duration: const Duration(milliseconds: 700)),
      ),
    );
  }
}
