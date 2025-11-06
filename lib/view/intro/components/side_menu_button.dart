import 'package:flutter/material.dart';
import '../../../res/constants.dart';

class MenuButton extends StatefulWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    // Base glow: 30% -> On hover: 120%
    const double baseGlow = 0.69;
    const double hoverGlow = 1.4;

    return Column(
      children: [
        const Spacer(),
        TweenAnimationBuilder<double>(
          tween: Tween<double>(
              begin: baseGlow, end: _isHovering ? hoverGlow : baseGlow),
          duration: const Duration(milliseconds: 250),
          builder: (context, glow, child) {
            return MouseRegion(
              onEnter: (_) => setState(() => _isHovering = true),
              onExit: (_) => setState(() => _isHovering = false),
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: widget.onTap,
                child: Container(
                  height: defaultPadding * 2.0,
                  width: defaultPadding * 2.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pinkAccent.withOpacity(0.5 * glow),
                        offset: const Offset(0, 0),
                        blurRadius: 10 * glow,
                      ),
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5 * glow),
                        offset: const Offset(0, 0),
                        blurRadius: 15 * glow,
                      ),
                      BoxShadow(
                        color: Colors.purpleAccent.withOpacity(0.3 * glow),
                        offset: const Offset(0, 0),
                        blurRadius: 25 * glow,
                      ),
                    ],
                  ),
                  child: Center(
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          colors: [Colors.pink, Colors.blue.shade900],
                        ).createShader(bounds);
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: defaultPadding * 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const Spacer(flex: 5),
      ],
    );
  }
}
