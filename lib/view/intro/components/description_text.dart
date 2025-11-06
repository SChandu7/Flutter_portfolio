import 'package:flutter/material.dart';
import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    bool isMobile =
        Responsive.isMobile(context) || Responsive.isLargeMobile(context);
    bool isDesktop = Responsive.isDesktop(context);

    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          isMobile
              ? // 👇 Mobile View (line breaks for better readability)

              'Experienced  Developer with a Proven \n'
                  'track record of delivering high-performance, \n'
                  'scalable applications. Skilled in leveraging \n'
                  'modern technologies such as Flutter, Django, \n'
                  'PostgreSQL, and AWS to build robust and \n'
                  'user-friendly solutions.'
              : // 👇 Desktop View (single paragraph, no changes)
              'Transforming ideas into powerful applications,${Responsive.isLargeMobile(context) ? '\n' : ''} ${Responsive.isDesktop(context) ? '\n' : ''}I develop web, mobile, and desktop Applications ${Responsive.isDesktop(context) ? '\n' : ''}${Responsive.isLargeMobile(context) ? '\n' : ''}with the Frontend Frameworks of Flutter and React Native,${Responsive.isDesktop(context) ? '\n' : ''}${Responsive.isLargeMobile(context) ? '\n' : ''}seamlessly integrating database management.${Responsive.isLargeMobile(context) ? '\n' : ''} ${Responsive.isDesktop(context) ? '\n' : ''}My expertise ensures every project is ${Responsive.isLargeMobile(context) ? '\n' : ''}built with the ${Responsive.isDesktop(context) ? '\n' : ''}intelligence, scalability, and precision ${Responsive.isLargeMobile(context) ? '\n' : ''}from concept to deployment.',
          maxLines: isDesktop ? 10 : 15,
          textAlign: isMobile ? TextAlign.start : TextAlign.left,
          overflow: TextOverflow.visible,
          style: TextStyle(
            color: Colors.grey,
            height: isMobile ? 1.4 : 1.6,
            wordSpacing: 2,
            fontSize: value,
          ),
        );
      },
    );
  }
}
