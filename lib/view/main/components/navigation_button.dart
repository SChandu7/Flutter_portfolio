import 'package:flutter/material.dart';

class NavigationTextButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final bool glow; // glow active flag

  const NavigationTextButton({
    super.key,
    required this.onTap,
    required this.text,
    this.glow = false,
  });

  @override
  State<NavigationTextButton> createState() => _NavigationTextButtonState();
}

class _NavigationTextButtonState extends State<NavigationTextButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final bool activeGlow = _isHovering || widget.glow;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: activeGlow ? Colors.purpleAccent : Colors.white,
                  shadows: activeGlow
                      ? [
                          Shadow(
                              color: Colors.purpleAccent.withOpacity(0.9),
                              offset: const Offset(0, 0),
                              blurRadius: 7),
                          Shadow(
                              color: Colors.purpleAccent.withOpacity(0.7),
                              offset: const Offset(0, 0),
                              blurRadius: 15),
                          Shadow(
                              color: Colors.purpleAccent.withOpacity(0.5),
                              offset: const Offset(0, 0),
                              blurRadius: 20),
                          Shadow(
                              color: Colors.purpleAccent.withOpacity(0.4),
                              offset: const Offset(0, 0),
                              blurRadius: 24),
                        ]
                      : [],
                ),
          ),
        ),
      ),
    );
  }
}
