import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
  MainView({super.key, required this.pages});
  final List<Widget> pages;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(height: defaultPadding * 2)
                : const SizedBox(height: defaultPadding / 2),
            SizedBox(
              height: 80,
              child: TopNavigationBar(
                  controller: _pageController), // pass controller
            ),
            if (Responsive.isLargeMobile(context))
              Row(
                children: [
                  const Spacer(),
                  NavigationButtonList(controller: _pageController),
                  const Spacer(),
                ],
              ),
         const   SizedBox(height: 6),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController, // <-- fix here
                children: [...pages],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
