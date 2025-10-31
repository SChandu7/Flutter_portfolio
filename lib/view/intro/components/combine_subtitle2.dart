import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: ' -'),
          largeMobile:
              AnimatedSubtitleText(start: 30, end: 25, text: ' -'),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: ' -'),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: ' -'),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30, end: 40, text: 'Freelance ', gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30, end: 25, text: 'Developer ', gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25, end: 20, text: 'Developer ', gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40, end: 30, text: 'Developer ', gradient: false),
                ),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30, end: 40, text: 'Developer ', gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30, end: 25, text: 'Developer ', gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25, end: 20, text: 'Developer ', gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40, end: 30, text: 'Developer ', gradient: false),
                ),
              ))
      ],
    );
  }
}
