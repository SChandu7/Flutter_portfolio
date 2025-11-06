import 'package:flutter/material.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return _DesktopIntroView();
    } else {
      return const _MobileIntroView();
    }
  }
}

class _DesktopIntroView extends StatelessWidget {
  _DesktopIntroView();

  @override
  Widget build(BuildContext context) {
    final bool isMobile =
        Responsive.isMobile(context) || Responsive.isLargeMobile(context);

    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.005),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left Section - Social icons + Texts
          Expanded(
            flex: 6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: size.width *
                        0.0001 /
                        4), // gap between follow bar & text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MyPortfolioText(start: 40, end: 50),
                      const SizedBox(height: defaultPadding / 4 + 4),
                      const CombineSubtitleText(),
                      const SizedBox(height: defaultPadding / 2),
                      const AnimatedDescriptionText(start: 14, end: 15),
                      const SizedBox(height: defaultPadding * 1.5),
                      Padding(
                        padding: EdgeInsets.only(left: isMobile ? 12.0 : 0.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 210, // 👈 limit button width
                            minWidth:
                                170, // 👈 keep it decent for small screens
                          ),
                          child: DownloadButton(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Right Section - Image
          // const Spacer(),
          //   SizedBox(width: MediaQuery.of(context).size.width * 0.6),
          SizedBox(width: size.width * 0.08), // space between text and image
          if (Responsive.isDesktop(context))
            SizedBox(
              width: size.width * 0.25, // give fixed width for the image zone
              child: const Center(child: AnimatedImageContainer()),
            ),
          SizedBox(width: size.width * 0.15), // right padding
        ],
      ),
    );
  }
}

class _MobileIntroView extends StatelessWidget {
  const _MobileIntroView();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.05),

          // 👇 Centered image with subtle size limit for all mobile screens
          Center(
            child: Column(
              children: [
                const AnimatedImageContainer(width: 175, height: 225),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),

          // 👇 Name text
          const MyPortfolioText(start: 30, end: 31),
          SizedBox(height: height * 0.009),

          // 👇 Subtitle ("Software Developer")
          const CombineSubtitleText(),
          SizedBox(height: height * 0.025),

          // 👇 Description
          const AnimatedDescriptionText(start: 14, end: 13),

          SizedBox(height: height * 0.02),

          // 👇 Download CV Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 210, minWidth: 160),
              child: const DownloadButton(),
            ),
          ),

          SizedBox(height: height * 0.06),
        ],
      ),
    );
  }
}
