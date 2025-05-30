import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          '"Transforming ideas into powerful applications,${Responsive.isLargeMobile(context) ? '\n' : ''} ${Responsive.isDesktop(context) ? '\n' : ''}I develop web, mobile, and desktop Applications ${Responsive.isDesktop(context) ? '\n' : ''}${Responsive.isLargeMobile(context) ? '\n' : ''}with the Frontend Frameworks of Flutter and React Native,${Responsive.isDesktop(context) ? '\n' : ''}${Responsive.isLargeMobile(context) ? '\n' : ''}seamlessly integrating database management.${Responsive.isLargeMobile(context) ? '\n' : ''} ${Responsive.isDesktop(context) ? '\n' : ''}My expertise ensures every project is ${Responsive.isLargeMobile(context) ? '\n' : ''}built with the ${Responsive.isDesktop(context) ? '\n' : ''}intelligence, scalability, and precision ${Responsive.isLargeMobile(context) ? '\n' : ''}from concept to deployment.',
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
//${Responsive.isLargeMobile(context) ? '\n' : ''}

//          "Transforming ideas into powerful applications,${Responsive.isLargeMobile(context) ? '\n' : ''} I develop web, mobile, and desktop Applications ${Responsive.isLargeMobile(context) ? '\n' : ''} with Flutter and React Native,${Responsive.isLargeMobile(context) ? '\n' : ''} seamlessly integrating database management.${Responsive.isLargeMobile(context) ? '\n' : ''} My expertise ensures every project is ${Responsive.isLargeMobile(context) ? '\n' : ''}built with intelligence, scalability, and precision ${Responsive.isLargeMobile(context) ? '\n' : ''}from concept to deployment.",
