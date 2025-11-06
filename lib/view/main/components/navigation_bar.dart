import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  final PageController controller; // Receive PageController

  const TopNavigationBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: !Responsive.isLargeMobile(context)
              ? GestureDetector(
                  child: Image.asset('assets/images/triange_icon.png'),
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute<HomePage>(
                      builder: (BuildContext context) {
                        return const  HomePage();
                      },
                    ));
                  },
                )
              : MenuButton(
                  onTap: () => Scaffold.of(context).openDrawer(),
                ),
        ),
        const Spacer(flex: 2),
        if (!Responsive.isLargeMobile(context))
          NavigationButtonList(controller: controller), // pass controller
        const Spacer(flex: 2),
        const ConnectButton(),
        const Spacer(),
      ],
    );
  }
}
