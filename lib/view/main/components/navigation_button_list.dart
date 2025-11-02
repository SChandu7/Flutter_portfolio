import 'dart:async';
import 'package:flutter/material.dart';
import '../../../view model/responsive.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatefulWidget {
  final PageController controller;

  const NavigationButtonList({super.key, required this.controller});

  @override
  State<NavigationButtonList> createState() => _NavigationButtonListState();
}

class _NavigationButtonListState extends State<NavigationButtonList> {
  int _highlightedIndex = -1;
  Timer? _timer;

  final List<String> _buttons = [
    'Home',
    'About us',
    'Projects',
    'Certifications',
    'Achievements'
  ];

  @override
  void initState() {
    super.initState();
    _startSequentialGlow();
  }

  void _startSequentialGlow() {
    int index = 0;

    _timer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      setState(() {
        _highlightedIndex = index;
      });

      index++;

      if (index >= _buttons.length) {
        _timer?.cancel();
        _highlightedIndex = -1; // remove glow after finishing
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_buttons.length, (index) {
        // Always create the button for animation, but hide visually on large mobile
        bool isVisible = !(Responsive.isLargeMobile(context) && index == 4);

        return Visibility(
          visible: isVisible,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: NavigationTextButton(
            onTap: () => _scrollToSection(index),
            text: _buttons[index],
            glow: _highlightedIndex == index,
          ),
        );
      }),
    );
  }

  void _scrollToSection(int targetPage) {
    if (!widget.controller.hasClients) return;

    final currentPage =
        widget.controller.page ?? widget.controller.initialPage.toDouble();
    final pageDistance = (targetPage - currentPage).abs();

    int baseDuration = 700;
    int adjustedDuration =
        (baseDuration * pageDistance).clamp(400, 1800).toInt();

    if (pageDistance == 2) adjustedDuration += 400;
    if (pageDistance >= 3) adjustedDuration += 700;

    widget.controller.animateToPage(
      targetPage,
      duration: Duration(milliseconds: adjustedDuration),
      curve: Curves.easeInOutCubic,
    );
  }
}
