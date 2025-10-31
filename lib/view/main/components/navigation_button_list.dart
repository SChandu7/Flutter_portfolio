import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view model/controller.dart';
import 'package:flutter_portfolio/view model/responsive.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () => _scrollToSection(0),
                text: 'Home',
              ),
              NavigationTextButton(
                onTap: () => _scrollToSection(1),
                text: 'About ',
              ),
              NavigationTextButton(
                onTap: () => _scrollToSection(2),
                text: 'Projects',
              ),
              NavigationTextButton(
                onTap: () => _scrollToSection(3),
                text: 'Certifications',
              ),
              if (!Responsive.isLargeMobile(context))
                NavigationTextButton(
                  onTap: () => _scrollToSection(4),
                  text: 'Achievements',
                ),
            ],
          ),
        );
      },
    );
  }

  /// Smooth smart scroll handler
  void _scrollToSection(int targetPage) {
    // Get the current page index from the controller
    final currentPage = controller.page ?? 0.0;

    // Calculate the distance between pages
    final pageDistance = (targetPage - currentPage).abs();

    // Base duration (short jumps)
    int baseDuration = 700;

    // For longer jumps, multiply the duration
    // Example: from Home(0) → Certifications(3) => 500 * 3 = 1500 ms
    int adjustedDuration =
        (baseDuration * pageDistance).clamp(400, 1800).toInt();

    if (pageDistance == 2) {
      adjustedDuration += 400;
    } else if (pageDistance >= 3) {
      adjustedDuration += 700;
    }
    print(
        'Adjusted Duration: $adjustedDuration ms for page distance: $pageDistance');

    controller.animateToPage(
      targetPage,
      duration: Duration(milliseconds: adjustedDuration),
      curve: Curves.easeInOutCubic,
    );
  }
}
