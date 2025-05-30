import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText2 extends StatelessWidget {
  const CombineSubtitleText2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'S'),
          largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'S'),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'S'),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'S'),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30,
                    end: 40,
                    text: 'Chandra Sekhar ',
                    gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30,
                    end: 25,
                    text: 'Chandra Sekhar ',
                    gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25,
                    end: 20,
                    text: 'Chandra Sekhar ',
                    gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40,
                    end: 30,
                    text: 'Chandra Sekhar ',
                    gradient: true),
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
                      start: 30,
                      end: 40,
                      text: 'Chandra Sekhar ',
                      gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30,
                      end: 25,
                      text: 'Chandra Sekhar ',
                      gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25,
                      end: 20,
                      text: 'Chandra Sekhar ',
                      gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40,
                      end: 30,
                      text: 'Chandra Sekhar ',
                      gradient: false),
                ),
              ))
      ],
    );
  }
}
